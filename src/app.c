/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "stdint.h"
#include <string.h>
#include "definitions.h"
#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
#define DRV_G3_MACRT_INDEX_0     0

#define LED_BLINK_RATE_MS        500
#define LED_PLC_RX_MSG_RATE_MS   50

#define CONF_PAN_ID              0x9876

APP_PLC_DATA appPlc;
APP_PLC_DATA_TX appPlcTx;

static CACHE_ALIGN uint8_t appPlcTxFrameBuffer[CACHE_ALIGNED_SIZE_GET(MAC_RT_DATA_MAX_SIZE)];

#define APP_TX_PAYLOAD_LEN  10
/*static uint8_t appTxPayload[APP_TX_PAYLOAD_LEN] =
    {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09};*/

// Declarations related to UART communication with c2000

APP_PLC_DATA appPlc;
APP_PLC_DATA_TX appPlcTx;     

static uint8_t *pReceivedChar;  //Apunta al buffer rxBuffer donde se guarda el mensaje recibido por UART

static uint8_t rxBuffer[512];   //Buffer en el que se recibe el mensaje enviado por texas a través de UART
volatile static uint32_t nBytesRead = 0;    //Contador de bytes recibidos por UART
volatile static uint16_t length_msg_pot = 512;  //longitud del mensaje recibido por UART. length_msg_pot = rxBuffer[0]
volatile static bool rxThresholdEventReceived = false;  //Cada cuantos bytes recibidos leer ring buffer

// Functions related to UART communication with c2000

volatile bool timeout_occurred = false;

void usartReadEventHandler(UART_EVENT event, uintptr_t context )    
{
    uint32_t nBytesAvailable = 0;

    
    //FLEXCOM0_USART_Write((uint8_t*)"_HAND",5);
    if (event == UART_EVENT_READ_THRESHOLD_REACHED)
    {
        /* Receiver should atleast have the threshold number of bytes in the ring buffer */
        //FLEXCOM0_USART_Write((uint8_t*)"_REACH",6);
        nBytesAvailable = UART_ReadCountGet();
        
        nBytesRead += UART_Read((uint8_t*)&rxBuffer[nBytesRead], nBytesAvailable); 
        length_msg_pot = rxBuffer[0];
        
        //FLEXCOM0_USART_Write(&rxBuffer[nBytesRead],10);
    }
}

void resetUARTTimeout() {
    timeout_occurred = false;
    TC0_CH0_TimerStop();   // Detén el temporizador
    TC0_CH0_TimerStart();  // Reinícialo
}

// Callback que se llama cuando el temporizador expira
void UARTTimeoutCallback(TC_TIMER_STATUS status, uintptr_t context) {
    // Esta función se llama cuando el temporizador expira
    timeout_occurred = true;  // Marca que ocurrió un timeout por inactividad
}

// Función de inicialización del temporizador
void TimerInitialize()
{
    // Inicializa el temporizador con el periodo deseado
    TC0_CH0_TimerInitialize();
    
    // Configura el periodo del temporizador para que expire en el tiempo deseado
    uint32_t timerPeriod = 500000000U; // Ajusta este valor en función del reloj y del tiempo deseado
    TC0_CH0_TimerPeriodSet(timerPeriod);
    
    // Registra el callback del temporizador para manejar la expiración por inactividad
    TC0_CH0_TimerCallbackRegister(UARTTimeoutCallback, (uintptr_t)NULL);
    
    // Inicia el temporizador
    TC0_CH0_TimerStart();
}

void UART_Reset(void){
    UART_Initialize();
    /* Configure UART callbacks */
    /* Register a callback for read events */
    UART_ReadCallbackRegister(usartReadEventHandler, (uintptr_t) NULL);              

    /* Enable notifications */
    UART_WriteNotificationEnable(true, false);

    /* For demonstration purpose, set a threshold value to receive a callback after every 5 characters are received */
    UART_ReadThresholdSet(1);

    /* Enable RX event notifications */
    UART_ReadNotificationEnable(true, false); 
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Internal Functions
// *****************************************************************************
// *****************************************************************************
static void APP_PLC_SetSourceAddress ( uint16_t address )
{
    /* Set Short Address in TX header */
    appPlcTx.txHeader.frameControl.srcAddressingMode = MAC_RT_SHORT_ADDRESS;
    appPlcTx.txHeader.sourceAddress.addressMode = MAC_RT_SHORT_ADDRESS;
    appPlcTx.txHeader.sourceAddress.shortAddress = address;

    /* Set Short Address in G3 MAC RT device */
    appPlc.plcPIB.pib = MAC_RT_PIB_SHORT_ADDRESS;
    appPlc.plcPIB.index = 0;
    appPlc.plcPIB.length = 2;
    memcpy(appPlc.plcPIB.pData, (uint8_t *)&address, 2);
    DRV_G3_MACRT_PIBSet(appPlc.drvPlcHandle, &appPlc.plcPIB);
}

static void APP_PLC_SetDestinationAddress ( uint16_t address )
{
    /* Set Short Address in TX header */
    appPlcTx.txHeader.frameControl.destAddressingMode = MAC_RT_SHORT_ADDRESS;
    appPlcTx.txHeader.destinationAddress.addressMode = MAC_RT_SHORT_ADDRESS;
    appPlcTx.txHeader.destinationAddress.shortAddress = address;
}

static void APP_PLC_SetPANID ( uint16_t panid )
{
    /* Set Short Address in TX header */
    appPlcTx.txHeader.frameControl.panIdCompression = 1;
    appPlcTx.txHeader.destinationPAN = panid;
    appPlcTx.txHeader.sourcePAN = panid;

    /* Set Short Address in G3 MAC RT device */
    appPlc.plcPIB.pib = MAC_RT_PIB_PAN_ID;
    appPlc.plcPIB.index = 0;
    appPlc.plcPIB.length = 2;
    memcpy(appPlc.plcPIB.pData, (uint8_t *)&panid, 2);
    DRV_G3_MACRT_PIBSet(appPlc.drvPlcHandle, &appPlc.plcPIB);
}

static void APP_PLC_SetInitialConfiguration ( void )
{
    /* Apply PLC coupling configuration */
    appPlc.couplingBranch = SRV_PCOUP_Get_Default_Branch();
    SRV_PCOUP_Set_Config(appPlc.drvPlcHandle, appPlc.couplingBranch);

    /* Fill MAC RT Header */
    appPlcTx.txHeader.frameControl.frameType = MAC_RT_FRAME_TYPE_DATA;
    appPlcTx.txHeader.frameControl.securityEnabled = 0;
    appPlcTx.txHeader.frameControl.framePending = 0;
    appPlcTx.txHeader.frameControl.ackRequest = 0;
    appPlcTx.txHeader.frameControl.frameVersion = 1;
    appPlcTx.txHeader.sequenceNumber = 0;

    /* Set PAN_ID */
    APP_PLC_SetPANID(CONF_PAN_ID);

    /* Set Addresses */
    APP_PLC_SetDestinationAddress(MAC_RT_SHORT_ADDRESS_BROADCAST);
    APP_PLC_SetSourceAddress((uint16_t)TRNG_ReadData());
}

static uint8_t APP_PLC_BuildMacRTHeader ( uint8_t *pFrame, MAC_RT_HEADER *pHeader )
{
    uint8_t *pData;

    pData = pFrame;

    /* Copy Frame Control and Sequence number */
    memcpy(pData, pHeader, 3);
    pData += 3;
    /* Build Header to use MAC_RT_SHORT_ADDRESS mode */
    /* Destination PAN ID */
    *pData++ = (uint8_t)(pHeader->destinationPAN);
    *pData++ = (uint8_t)(pHeader->destinationPAN >> 8);
    /* Destination address */
    *pData++ = (uint8_t)(pHeader->destinationAddress.shortAddress);
    *pData++ = (uint8_t)(pHeader->destinationAddress.shortAddress >> 8);
    /* panIdCompression = 1 -> No Source PAN ID */
    /* Source Address */
    *pData++ = (uint8_t)(pHeader->sourceAddress.shortAddress);
    *pData++ = (uint8_t)(pHeader->sourceAddress.shortAddress >> 8);

    /* Return Header length */
    return (uint8_t)(pData - pFrame);
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
static void APP_PLC_Timer1_Callback (uintptr_t context)
{
    appPlc.tmr1Expired = true;
}

static void APP_PLC_Timer2_Callback (uintptr_t context)
{
    appPlc.tmr2Expired = true;
}

static void APP_PLC_Timer3_Callback (uintptr_t context)
{
    appPlc.tmr3Expired = true;
}

static void APP_PLC_G3MACRTInitCallback(bool initResult)
{
    if (initResult == true)
    {
        /* Apply PLC initial configuration */
        APP_PLC_SetInitialConfiguration();
    }
    else
    {
        /* Error in G3 MAC RT initialization process */
        appPlc.state = APP_PLC_STATE_ERROR;
    }
}

static void APP_PLC_PVDDMonitorCallback( SRV_PVDDMON_CMP_MODE cmpMode, uintptr_t context )
{
    (void)context;

    if (cmpMode == SRV_PVDDMON_CMP_MODE_OUT)
    {
        /* PLC Transmission is not permitted */
        DRV_G3_MACRT_EnableTX(appPlc.drvPlcHandle, false);
        appPlc.pvddMonTxEnable = false;
        /* Restart PVDD Monitor to check when VDD is within the comparison window */
        SRV_PVDDMON_Restart(SRV_PVDDMON_CMP_MODE_IN);
    }
    else
    {
        /* PLC Transmission is permitted again */
        DRV_G3_MACRT_EnableTX(appPlc.drvPlcHandle, true);
        appPlc.pvddMonTxEnable = true;
        /* Restart PVDD Monitor to check when VDD is out of the comparison window */
        SRV_PVDDMON_Restart(SRV_PVDDMON_CMP_MODE_OUT);
    }
}

static void APP_PLC_ExceptionCallback( DRV_G3_MACRT_EXCEPTION exceptionObj )
{
    /* Avoid warning */
    (void)exceptionObj;

    /* Update PLC TX Status */
    appPlc.plcTxState = APP_PLC_TX_STATE_IDLE;
    /* Go to Exception state to restart PLC Driver */
    appPlc.state = APP_PLC_STATE_EXCEPTION;
}

static void APP_PLC_DataCfmCallback( MAC_RT_TX_CFM_OBJ *cfmObj )
{
    /* Update PLC TX Status */
    appPlc.plcTxState = APP_PLC_TX_STATE_IDLE;

    /* Capture TX result of the last transmission */
    appPlcTx.lastTxStatus = cfmObj->status;
}

static void APP_PLC_DataIndCallback( uint8_t *pData, uint16_t length )
{
    /* Turn on indication LED and start timer to turn it off */
    SYS_TIME_TimerDestroy(appPlc.tmr2Handle);
    USER_PLC_IND_LED_On();
    appPlc.tmr2Handle = SYS_TIME_CallbackRegisterMS(APP_PLC_Timer2_Callback, 0, LED_PLC_RX_MSG_RATE_MS, SYS_TIME_SINGLE);
}

static void APP_PLC_RxParamsIndCallback( MAC_RT_RX_PARAMETERS_OBJ *pParameters )
{
    appPlcTx.rxParams.highPriority = pParameters->highPriority;
    appPlcTx.rxParams.pduLinkQuality = pParameters->pduLinkQuality;
    appPlcTx.rxParams.phaseDifferential = pParameters->phaseDifferential;
    appPlcTx.rxParams.modType = pParameters->modType;
    appPlcTx.rxParams.modScheme = pParameters->modScheme;
    memcpy(&appPlcTx.rxParams.toneMap, &pParameters->toneMap, sizeof(MAC_RT_TONE_MAP));
    memcpy(&appPlcTx.rxParams.toneMapRsp, &pParameters->toneMapRsp, sizeof(MAC_RT_TONE_MAP_RSP_DATA));
}

static void APP_PLC_SendData ( void )
{
    if (appPlc.pvddMonTxEnable)
    {
        uint8_t *pFrame;
        uint8_t headerLen;

        appPlc.plcTxState = APP_PLC_TX_STATE_WAIT_TX_CFM;

        pFrame = appPlcTx.pTxFrame;

        /* Build MAC RT Frame */
        headerLen = APP_PLC_BuildMacRTHeader(pFrame, &appPlcTx.txHeader);
        pFrame += headerLen;

        /* Fill Payload */
        memcpy(pFrame, pReceivedChar, APP_TX_PAYLOAD_LEN);
        pFrame += APP_TX_PAYLOAD_LEN;

        /* Send MAC RT Frame */
        DRV_G3_MACRT_TxRequest(appPlc.drvPlcHandle, appPlcTx.pTxFrame,
                pFrame - appPlcTx.pTxFrame);

        /* Set PLC state */
        if (appPlc.plcTxState == APP_PLC_TX_STATE_WAIT_TX_CFM)
        {
            appPlc.state = APP_PLC_STATE_WAITING_TX_CFM;
        }
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************
/*******************************************************************************
  Function:
    void APP_Initialize(void)

  Remarks:
    See prototype in app.h.
 */
void APP_Initialize ( void )
{
    /* Init PLC data buffers */
    appPlcTx.pTxFrame = appPlcTxFrameBuffer;

    /* Set PLC state */
    appPlc.state = APP_PLC_STATE_IDLE;
    /* Init PLC TX status */
    appPlc.plcTxState = APP_PLC_TX_STATE_IDLE;

    /* Set PVDD Monitor tracking data */
    appPlc.pvddMonTxEnable = true;

    /* Init Timer handlers */
    appPlc.tmr1Handle = SYS_TIME_HANDLE_INVALID;
    appPlc.tmr2Handle = SYS_TIME_HANDLE_INVALID;
    appPlc.tmr3Handle = SYS_TIME_HANDLE_INVALID;
    appPlc.tmr1Expired = false;
    appPlc.tmr2Expired = false;
    appPlc.tmr3Expired = false;

}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    /* Signalling */
    if (appPlc.tmr1Expired)
    {
        appPlc.tmr1Expired = false;
        USER_BLINK_LED_Toggle();
    }

    if (appPlc.tmr2Expired)
    {
        appPlc.tmr2Expired = false;
        USER_PLC_IND_LED_Off();
    }

    if (appPlc.tmr3Expired)
    {
        appPlc.tmr3Expired = false;
        appPlc.state = APP_PLC_STATE_TX;
    }

    /* Check the application's current state. */
    switch ( appPlc.state )
    {
        case APP_PLC_STATE_IDLE:
        {
            //FLEXCOM0_USART_Write((uint8_t*)"IDLE", 4);
            /* Initialize PLC driver */
            appPlc.state = APP_PLC_STATE_INIT;
            break;
        }

        case APP_PLC_STATE_INIT:
        {
            //FLEXCOM0_USART_Write((uint8_t*)"INIT", 4);
            // Inicializa y configura el temporizador para el timeout de UART
            //TimerInitialize(); De momento comento estas lineas. No se porque pero si no el código no se ejecuta
            //FLEXCOM0_USART_Write((uint8_t*)"1",1);
            /* Configure UART callbacks */
            /* Register a callback for read events */
            UART_ReadCallbackRegister(usartReadEventHandler, (uintptr_t) NULL);              
            //FLEXCOM0_USART_Write((uint8_t*)"2",1);
            /* Enable notifications */
            UART_WriteNotificationEnable(true, false);
            //FLEXCOM0_USART_Write((uint8_t*)"3",1);
            /* For demonstration purpose, set a threshold value to receive a callback after every 5 characters are received */
            UART_ReadThresholdSet(1);
            //FLEXCOM0_USART_Write((uint8_t*)"4",1);
            /* Enable RX event notifications */
            UART_ReadNotificationEnable(true, false); 
            //FLEXCOM0_USART_Write((uint8_t*)"5",1);
            /* Set G3 MAC RT initialization callback */
            DRV_G3_MACRT_InitCallbackRegister(DRV_G3_MACRT_INDEX_0, APP_PLC_G3MACRTInitCallback);
            //FLEXCOM0_USART_Write((uint8_t*)"6",1);
            /* Open PLC driver */
            appPlc.drvPlcHandle = DRV_G3_MACRT_Open(DRV_G3_MACRT_INDEX_0, NULL);
            //FLEXCOM0_USART_Write((uint8_t*)"7",1);
            
            
            if (appPlc.drvPlcHandle != DRV_HANDLE_INVALID)
            {
                appPlc.state = APP_PLC_STATE_OPEN;
                //FLEXCOM0_USART_Write((uint8_t*)"8_",1);
            }
            else
            {
                appPlc.state = APP_PLC_STATE_ERROR;
                //FLEXCOM0_USART_Write((uint8_t*)"9",1);
            }
            break;
        }

        case APP_PLC_STATE_OPEN:
        {
            //FLEXCOM0_USART_Write((uint8_t*)"OPEN", 4);
            /* Check PLC transceiver */
            if (DRV_G3_MACRT_Status(DRV_G3_MACRT_INDEX_0) == DRV_G3_MACRT_STATE_READY)
            {
                /* Configure PLC callbacks */
                DRV_G3_MACRT_ExceptionCallbackRegister(appPlc.drvPlcHandle, APP_PLC_ExceptionCallback);
                DRV_G3_MACRT_TxCfmCallbackRegister(appPlc.drvPlcHandle, APP_PLC_DataCfmCallback);
                DRV_G3_MACRT_DataIndCallbackRegister(appPlc.drvPlcHandle, APP_PLC_DataIndCallback);
                DRV_G3_MACRT_RxParamsIndCallbackRegister(appPlc.drvPlcHandle, APP_PLC_RxParamsIndCallback);

                /* Enable PLC Transmission */
                DRV_G3_MACRT_EnableTX(appPlc.drvPlcHandle, true);

                /* Enable PLC PVDD Monitor Service */
                SRV_PVDDMON_CallbackRegister(APP_PLC_PVDDMonitorCallback, 0);
                SRV_PVDDMON_Start(SRV_PVDDMON_CMP_MODE_OUT);

                /* Init Timer to handle blinking led */
                appPlc.tmr1Handle = SYS_TIME_CallbackRegisterMS(APP_PLC_Timer1_Callback, 0, LED_BLINK_RATE_MS, SYS_TIME_PERIODIC);

                /* Set PLC state */
                appPlc.state = APP_PLC_STATE_UART_RECEIVE;
            }
            break;
        }
        
        case APP_PLC_STATE_UART_RECEIVE:
        {
            //FLEXCOM0_USART_Write((uint8_t*)"UART RECEIVE", 12);
            // Si ocurrió un timeout, reiniciar el UART
            if (timeout_occurred) {
                UART_Reset();  // Reinicia UART si ocurrió un timeout
                resetUARTTimeout();  // Reinicia el temporizador para el próximo mensaje
            }
            if (nBytesRead >= length_msg_pot + 1){ // Si el mensaje se ha recibido completo, se envia por PLC. Habrá que modificarlo de forma que se envie siempre con un timer periodicamente en vez del contador
                
                nBytesRead = 0;
                //FLEXCOM0_USART_Write((uint8_t *)pReceivedChar, length_msg_pot);
                pReceivedChar = rxBuffer + 1;
                resetUARTTimeout();
                
                //FLEXCOM0_USART_Write((uint8_t*)"_TRANSMIT_", 9);
                FLEXCOM0_USART_Write((uint8_t*)pReceivedChar, length_msg_pot);
                appPlc.state = APP_PLC_STATE_SET_NEXT_TX;
            }
            
            
            
            break;
        }
            
        
        

        case APP_PLC_STATE_SET_NEXT_TX:
        {
            uint16_t randMs;

            randMs = (uint16_t)TRNG_ReadData();
            randMs &= 0x07FF; /* Keep it under 2 seconds */

            SYS_TIME_TimerDestroy(appPlc.tmr3Handle);
            appPlc.tmr3Handle = SYS_TIME_CallbackRegisterMS(APP_PLC_Timer3_Callback, 0, randMs, SYS_TIME_SINGLE);

            /* Set PLC state */
            appPlc.state = APP_PLC_STATE_WAITING;
            break;
        }

        case APP_PLC_STATE_WAITING:
        {
            break;
        }

        case APP_PLC_STATE_TX:
        {
            APP_PLC_SendData();
            break;
        }

        case APP_PLC_STATE_WAITING_TX_CFM:
        {
            if (appPlc.plcTxState != APP_PLC_TX_STATE_WAIT_TX_CFM)
            {
                 appPlc.state = APP_PLC_STATE_SET_NEXT_TX;
            }
            break;
        }

        case APP_PLC_STATE_EXCEPTION:
        {
            /* Close Driver and go to INIT state for reinitialization */
            DRV_G3_MACRT_Close(appPlc.drvPlcHandle);
            appPlc.state = APP_PLC_STATE_INIT;
            SYS_TIME_TimerDestroy(appPlc.tmr1Handle);
            break;
        }

        /* The default state should never be executed. */
        default:
        {
            /* Handle error in application's state machine. */
            break;
        }
    }
}

/*******************************************************************************
 End of File
 */
