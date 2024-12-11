/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdint.h>

// Declaration console

//Definitions related to console
uint8_t txBuffer[50];
uint8_t rxBuffer[10];
static volatile uint32_t nBytesRead = 0;
volatile bool txThresholdEventReceived = false;
volatile bool rxThresholdEventReceived = false;

FLEXCOM_USART_SERIAL_SETUP setup = {
    115200,
    FLEXCOM_USART_DATA_8_BIT,
    FLEXCOM_USART_PARITY_ODD,
    FLEXCOM_USART_STOP_1_BIT
};



// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    FLEXCOM0_USART_SerialSetup(&setup, 0);
  
    FLEXCOM0_USART_Write((uint8_t*)"Programa arrancado", 18);
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

