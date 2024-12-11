#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32cxmtg.mk)" "nbproject/Makefile-local-pic32cxmtg.mk"
include nbproject/Makefile-local-pic32cxmtg.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32cxmtg
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32cxmtg/bsp/bsp.c ../src/config/pic32cxmtg/driver/plc/common/drv_plc_boot.c ../src/config/pic32cxmtg/driver/plc/common/drv_plc_hal.c ../src/config/pic32cxmtg/driver/plc/g3MacRt/bin/drv_g3_macrt_bin.S ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt.c ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt_local_comm.c ../src/config/pic32cxmtg/peripheral/adc/plib_adc.c ../src/config/pic32cxmtg/peripheral/clk/plib_clk.c ../src/config/pic32cxmtg/peripheral/cmcc/plib_cmcc.c ../src/config/pic32cxmtg/peripheral/dwdt/plib_dwdt.c ../src/config/pic32cxmtg/peripheral/flexcom/spi/master/plib_flexcom5_spi_master.c ../src/config/pic32cxmtg/peripheral/flexcom/usart/plib_flexcom0_usart.c ../src/config/pic32cxmtg/peripheral/nvic/plib_nvic.c ../src/config/pic32cxmtg/peripheral/pio/plib_pio.c ../src/config/pic32cxmtg/peripheral/rstc/plib_rstc.c ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc0.c ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc1.c ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc_common.c ../src/config/pic32cxmtg/peripheral/supc/plib_supc.c ../src/config/pic32cxmtg/peripheral/tc/plib_tc0.c ../src/config/pic32cxmtg/peripheral/trng/plib_trng.c ../src/config/pic32cxmtg/service/pcoup/srv_pcoup.c ../src/config/pic32cxmtg/service/pvddmon/srv_pvddmon.c ../src/config/pic32cxmtg/stdio/xc32_monitor.c ../src/config/pic32cxmtg/system/cache/sys_cache.c ../src/config/pic32cxmtg/system/int/src/sys_int.c ../src/config/pic32cxmtg/system/time/src/sys_time.c ../src/config/pic32cxmtg/initialization.c ../src/config/pic32cxmtg/tasks.c ../src/config/pic32cxmtg/startup_xc32.c ../src/config/pic32cxmtg/exceptions.c ../src/config/pic32cxmtg/libc_syscalls.c ../src/config/pic32cxmtg/interrupts.c ../src/main.c ../src/app.c ../src/config/pic32cxmtg/peripheral/uart/plib_uart.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1785439515/bsp.o ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o ${OBJECTDIR}/_ext/33940185/plib_adc.o ${OBJECTDIR}/_ext/33938007/plib_clk.o ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o ${OBJECTDIR}/_ext/1051740869/plib_nvic.o ${OBJECTDIR}/_ext/33925603/plib_pio.o ${OBJECTDIR}/_ext/1051624247/plib_rstc.o ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o ${OBJECTDIR}/_ext/1051592658/plib_supc.o ${OBJECTDIR}/_ext/139641592/plib_tc0.o ${OBJECTDIR}/_ext/1051565808/plib_trng.o ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o ${OBJECTDIR}/_ext/1407433284/sys_cache.o ${OBJECTDIR}/_ext/1787564926/sys_int.o ${OBJECTDIR}/_ext/1275873064/sys_time.o ${OBJECTDIR}/_ext/1545560501/initialization.o ${OBJECTDIR}/_ext/1545560501/tasks.o ${OBJECTDIR}/_ext/1545560501/startup_xc32.o ${OBJECTDIR}/_ext/1545560501/exceptions.o ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o ${OBJECTDIR}/_ext/1545560501/interrupts.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1051552217/plib_uart.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1785439515/bsp.o.d ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o.d ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o.d ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.d ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o.d ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o.d ${OBJECTDIR}/_ext/33940185/plib_adc.o.d ${OBJECTDIR}/_ext/33938007/plib_clk.o.d ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o.d ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o.d ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o.d ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o.d ${OBJECTDIR}/_ext/1051740869/plib_nvic.o.d ${OBJECTDIR}/_ext/33925603/plib_pio.o.d ${OBJECTDIR}/_ext/1051624247/plib_rstc.o.d ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o.d ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o.d ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o.d ${OBJECTDIR}/_ext/1051592658/plib_supc.o.d ${OBJECTDIR}/_ext/139641592/plib_tc0.o.d ${OBJECTDIR}/_ext/1051565808/plib_trng.o.d ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o.d ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o.d ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o.d ${OBJECTDIR}/_ext/1407433284/sys_cache.o.d ${OBJECTDIR}/_ext/1787564926/sys_int.o.d ${OBJECTDIR}/_ext/1275873064/sys_time.o.d ${OBJECTDIR}/_ext/1545560501/initialization.o.d ${OBJECTDIR}/_ext/1545560501/tasks.o.d ${OBJECTDIR}/_ext/1545560501/startup_xc32.o.d ${OBJECTDIR}/_ext/1545560501/exceptions.o.d ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o.d ${OBJECTDIR}/_ext/1545560501/interrupts.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1051552217/plib_uart.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1785439515/bsp.o ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o ${OBJECTDIR}/_ext/33940185/plib_adc.o ${OBJECTDIR}/_ext/33938007/plib_clk.o ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o ${OBJECTDIR}/_ext/1051740869/plib_nvic.o ${OBJECTDIR}/_ext/33925603/plib_pio.o ${OBJECTDIR}/_ext/1051624247/plib_rstc.o ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o ${OBJECTDIR}/_ext/1051592658/plib_supc.o ${OBJECTDIR}/_ext/139641592/plib_tc0.o ${OBJECTDIR}/_ext/1051565808/plib_trng.o ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o ${OBJECTDIR}/_ext/1407433284/sys_cache.o ${OBJECTDIR}/_ext/1787564926/sys_int.o ${OBJECTDIR}/_ext/1275873064/sys_time.o ${OBJECTDIR}/_ext/1545560501/initialization.o ${OBJECTDIR}/_ext/1545560501/tasks.o ${OBJECTDIR}/_ext/1545560501/startup_xc32.o ${OBJECTDIR}/_ext/1545560501/exceptions.o ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o ${OBJECTDIR}/_ext/1545560501/interrupts.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1051552217/plib_uart.o

# Source Files
SOURCEFILES=../src/config/pic32cxmtg/bsp/bsp.c ../src/config/pic32cxmtg/driver/plc/common/drv_plc_boot.c ../src/config/pic32cxmtg/driver/plc/common/drv_plc_hal.c ../src/config/pic32cxmtg/driver/plc/g3MacRt/bin/drv_g3_macrt_bin.S ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt.c ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt_local_comm.c ../src/config/pic32cxmtg/peripheral/adc/plib_adc.c ../src/config/pic32cxmtg/peripheral/clk/plib_clk.c ../src/config/pic32cxmtg/peripheral/cmcc/plib_cmcc.c ../src/config/pic32cxmtg/peripheral/dwdt/plib_dwdt.c ../src/config/pic32cxmtg/peripheral/flexcom/spi/master/plib_flexcom5_spi_master.c ../src/config/pic32cxmtg/peripheral/flexcom/usart/plib_flexcom0_usart.c ../src/config/pic32cxmtg/peripheral/nvic/plib_nvic.c ../src/config/pic32cxmtg/peripheral/pio/plib_pio.c ../src/config/pic32cxmtg/peripheral/rstc/plib_rstc.c ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc0.c ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc1.c ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc_common.c ../src/config/pic32cxmtg/peripheral/supc/plib_supc.c ../src/config/pic32cxmtg/peripheral/tc/plib_tc0.c ../src/config/pic32cxmtg/peripheral/trng/plib_trng.c ../src/config/pic32cxmtg/service/pcoup/srv_pcoup.c ../src/config/pic32cxmtg/service/pvddmon/srv_pvddmon.c ../src/config/pic32cxmtg/stdio/xc32_monitor.c ../src/config/pic32cxmtg/system/cache/sys_cache.c ../src/config/pic32cxmtg/system/int/src/sys_int.c ../src/config/pic32cxmtg/system/time/src/sys_time.c ../src/config/pic32cxmtg/initialization.c ../src/config/pic32cxmtg/tasks.c ../src/config/pic32cxmtg/startup_xc32.c ../src/config/pic32cxmtg/exceptions.c ../src/config/pic32cxmtg/libc_syscalls.c ../src/config/pic32cxmtg/interrupts.c ../src/main.c ../src/app.c ../src/config/pic32cxmtg/peripheral/uart/plib_uart.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32cxmtg.mk ${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32CX2051MTG128
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32cxmtg\PIC32CX2051MTG128.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o: ../src/config/pic32cxmtg/driver/plc/g3MacRt/bin/drv_g3_macrt_bin.S  .generated_files/flags/pic32cxmtg/a37e324b34e7df227fc3c0dbaf5fdd20a9010e2d .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2087500840" 
	@${RM} ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o 
	@${RM} ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.ok ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.d"  -o ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o ../src/config/pic32cxmtg/driver/plc/g3MacRt/bin/drv_g3_macrt_bin.S  -DXPRJ_pic32cxmtg=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/config/pic32cxmtg/driver/plc/g3MacRt/bin" -mdfp="${DFP_DIR}/PIC32CX-MTG"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.d" "${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o: ../src/config/pic32cxmtg/driver/plc/g3MacRt/bin/drv_g3_macrt_bin.S  .generated_files/flags/pic32cxmtg/e49d794b35159b5df7810e294b1ffd414bda9646 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2087500840" 
	@${RM} ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o 
	@${RM} ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.ok ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.d"  -o ${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o ../src/config/pic32cxmtg/driver/plc/g3MacRt/bin/drv_g3_macrt_bin.S  -DXPRJ_pic32cxmtg=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.asm.d",--gdwarf-2,-I"../src/config/pic32cxmtg/driver/plc/g3MacRt/bin" -mdfp="${DFP_DIR}/PIC32CX-MTG"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.d" "${OBJECTDIR}/_ext/2087500840/drv_g3_macrt_bin.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1785439515/bsp.o: ../src/config/pic32cxmtg/bsp/bsp.c  .generated_files/flags/pic32cxmtg/f0a2186d103d2a15d9eac672209241a8da92742 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1785439515" 
	@${RM} ${OBJECTDIR}/_ext/1785439515/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1785439515/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1785439515/bsp.o.d" -o ${OBJECTDIR}/_ext/1785439515/bsp.o ../src/config/pic32cxmtg/bsp/bsp.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160729472/drv_plc_boot.o: ../src/config/pic32cxmtg/driver/plc/common/drv_plc_boot.c  .generated_files/flags/pic32cxmtg/5b0ea3189c7fa815caedae69e12c16601c4a7554 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160729472" 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160729472/drv_plc_boot.o.d" -o ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o ../src/config/pic32cxmtg/driver/plc/common/drv_plc_boot.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160729472/drv_plc_hal.o: ../src/config/pic32cxmtg/driver/plc/common/drv_plc_hal.c  .generated_files/flags/pic32cxmtg/cd3ae4b39521c5e846481cb7a545d942c125c23a .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160729472" 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160729472/drv_plc_hal.o.d" -o ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o ../src/config/pic32cxmtg/driver/plc/common/drv_plc_hal.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o: ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt.c  .generated_files/flags/pic32cxmtg/5c7de2acf8e514ccbf694977284b279024f2019 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1804977744" 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o.d" -o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o: ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt_local_comm.c  .generated_files/flags/pic32cxmtg/1d5a2ac044dc42976c625e0f98f551357a01f472 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1804977744" 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o.d" -o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt_local_comm.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/33940185/plib_adc.o: ../src/config/pic32cxmtg/peripheral/adc/plib_adc.c  .generated_files/flags/pic32cxmtg/f95b131e75d164c76865ae04cf0f704fd3b8cdf7 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/33940185" 
	@${RM} ${OBJECTDIR}/_ext/33940185/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/33940185/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/33940185/plib_adc.o.d" -o ${OBJECTDIR}/_ext/33940185/plib_adc.o ../src/config/pic32cxmtg/peripheral/adc/plib_adc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/33938007/plib_clk.o: ../src/config/pic32cxmtg/peripheral/clk/plib_clk.c  .generated_files/flags/pic32cxmtg/76875380967e6b1f603492d786c65f221ca080d8 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/33938007" 
	@${RM} ${OBJECTDIR}/_ext/33938007/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/33938007/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/33938007/plib_clk.o.d" -o ${OBJECTDIR}/_ext/33938007/plib_clk.o ../src/config/pic32cxmtg/peripheral/clk/plib_clk.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1052077405/plib_cmcc.o: ../src/config/pic32cxmtg/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32cxmtg/f9489753b8e3a7a5791e3da990b8cbb548a00c9b .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1052077405" 
	@${RM} ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1052077405/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o ../src/config/pic32cxmtg/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1052037956/plib_dwdt.o: ../src/config/pic32cxmtg/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/pic32cxmtg/cb6e7ee5c82b8fea3c3060f2a205ad59fb68d4ad .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1052037956" 
	@${RM} ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1052037956/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o ../src/config/pic32cxmtg/peripheral/dwdt/plib_dwdt.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o: ../src/config/pic32cxmtg/peripheral/flexcom/spi/master/plib_flexcom5_spi_master.c  .generated_files/flags/pic32cxmtg/c1a3a4d4475a62a4152ea99c96892de891e25ae4 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1016581701" 
	@${RM} ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o.d" -o ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o ../src/config/pic32cxmtg/peripheral/flexcom/spi/master/plib_flexcom5_spi_master.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o: ../src/config/pic32cxmtg/peripheral/flexcom/usart/plib_flexcom0_usart.c  .generated_files/flags/pic32cxmtg/bbc366a546fa05b40d18e8741afc897833387678 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260474139" 
	@${RM} ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o.d" -o ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o ../src/config/pic32cxmtg/peripheral/flexcom/usart/plib_flexcom0_usart.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051740869/plib_nvic.o: ../src/config/pic32cxmtg/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cxmtg/c1de3c4e32dec88b84d8e7d617b0cf1cdd83586a .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051740869" 
	@${RM} ${OBJECTDIR}/_ext/1051740869/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051740869/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051740869/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1051740869/plib_nvic.o ../src/config/pic32cxmtg/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/33925603/plib_pio.o: ../src/config/pic32cxmtg/peripheral/pio/plib_pio.c  .generated_files/flags/pic32cxmtg/30d4f1e0c4e2faf50e1a405812a381b655463ad8 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/33925603" 
	@${RM} ${OBJECTDIR}/_ext/33925603/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/33925603/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/33925603/plib_pio.o.d" -o ${OBJECTDIR}/_ext/33925603/plib_pio.o ../src/config/pic32cxmtg/peripheral/pio/plib_pio.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051624247/plib_rstc.o: ../src/config/pic32cxmtg/peripheral/rstc/plib_rstc.c  .generated_files/flags/pic32cxmtg/cc0a0173783aa1bfbb137b79f0a694c0c9710a61 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051624247" 
	@${RM} ${OBJECTDIR}/_ext/1051624247/plib_rstc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051624247/plib_rstc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051624247/plib_rstc.o.d" -o ${OBJECTDIR}/_ext/1051624247/plib_rstc.o ../src/config/pic32cxmtg/peripheral/rstc/plib_rstc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051608344/plib_sefc0.o: ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc0.c  .generated_files/flags/pic32cxmtg/59e741e38efcf789747322e078ae1c055f084038 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051608344" 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051608344/plib_sefc0.o.d" -o ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc0.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051608344/plib_sefc1.o: ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc1.c  .generated_files/flags/pic32cxmtg/f422573c914996d17980ed903118185022effa05 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051608344" 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051608344/plib_sefc1.o.d" -o ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc1.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o: ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc_common.c  .generated_files/flags/pic32cxmtg/6bdacc30f175b5f0b19d5913590121dcb50e757f .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051608344" 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o.d" -o ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc_common.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051592658/plib_supc.o: ../src/config/pic32cxmtg/peripheral/supc/plib_supc.c  .generated_files/flags/pic32cxmtg/1b544382cd344f8fafc777ac1da90ba95531fd4a .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051592658" 
	@${RM} ${OBJECTDIR}/_ext/1051592658/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051592658/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051592658/plib_supc.o.d" -o ${OBJECTDIR}/_ext/1051592658/plib_supc.o ../src/config/pic32cxmtg/peripheral/supc/plib_supc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139641592/plib_tc0.o: ../src/config/pic32cxmtg/peripheral/tc/plib_tc0.c  .generated_files/flags/pic32cxmtg/1cc92222807a0e0bcc1e71683482b5d48cf86300 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/139641592" 
	@${RM} ${OBJECTDIR}/_ext/139641592/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/139641592/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139641592/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/139641592/plib_tc0.o ../src/config/pic32cxmtg/peripheral/tc/plib_tc0.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051565808/plib_trng.o: ../src/config/pic32cxmtg/peripheral/trng/plib_trng.c  .generated_files/flags/pic32cxmtg/358cc78d8c465385129ac3586051e8e30f456eb6 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051565808" 
	@${RM} ${OBJECTDIR}/_ext/1051565808/plib_trng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051565808/plib_trng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051565808/plib_trng.o.d" -o ${OBJECTDIR}/_ext/1051565808/plib_trng.o ../src/config/pic32cxmtg/peripheral/trng/plib_trng.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540903485/srv_pcoup.o: ../src/config/pic32cxmtg/service/pcoup/srv_pcoup.c  .generated_files/flags/pic32cxmtg/8e23d8b559d4444db3856712d47f36a718f4eaf2 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540903485" 
	@${RM} ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540903485/srv_pcoup.o.d" -o ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o ../src/config/pic32cxmtg/service/pcoup/srv_pcoup.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o: ../src/config/pic32cxmtg/service/pvddmon/srv_pvddmon.c  .generated_files/flags/pic32cxmtg/e4eef0d1a473d8ed786286ddbaefac319743980b .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1488757394" 
	@${RM} ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o.d" -o ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o ../src/config/pic32cxmtg/service/pvddmon/srv_pvddmon.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2099701329/xc32_monitor.o: ../src/config/pic32cxmtg/stdio/xc32_monitor.c  .generated_files/flags/pic32cxmtg/bac83dad2ba7e918893358f24dda438d04c7f7e9 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2099701329" 
	@${RM} ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2099701329/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o ../src/config/pic32cxmtg/stdio/xc32_monitor.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1407433284/sys_cache.o: ../src/config/pic32cxmtg/system/cache/sys_cache.c  .generated_files/flags/pic32cxmtg/427309e9a5826b4074da21a1cf70395a2539d137 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1407433284" 
	@${RM} ${OBJECTDIR}/_ext/1407433284/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407433284/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407433284/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1407433284/sys_cache.o ../src/config/pic32cxmtg/system/cache/sys_cache.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1787564926/sys_int.o: ../src/config/pic32cxmtg/system/int/src/sys_int.c  .generated_files/flags/pic32cxmtg/32bc39d976535873c180ba91c12481f1ff4d473a .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1787564926" 
	@${RM} ${OBJECTDIR}/_ext/1787564926/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1787564926/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1787564926/sys_int.o.d" -o ${OBJECTDIR}/_ext/1787564926/sys_int.o ../src/config/pic32cxmtg/system/int/src/sys_int.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1275873064/sys_time.o: ../src/config/pic32cxmtg/system/time/src/sys_time.c  .generated_files/flags/pic32cxmtg/f4c2c77e5d77d28d515d7fe9b29cf39eaf22ee6d .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1275873064" 
	@${RM} ${OBJECTDIR}/_ext/1275873064/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1275873064/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1275873064/sys_time.o.d" -o ${OBJECTDIR}/_ext/1275873064/sys_time.o ../src/config/pic32cxmtg/system/time/src/sys_time.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/initialization.o: ../src/config/pic32cxmtg/initialization.c  .generated_files/flags/pic32cxmtg/cde25276a1c27197a96040d0fa7993faa84cfba2 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/initialization.o.d" -o ${OBJECTDIR}/_ext/1545560501/initialization.o ../src/config/pic32cxmtg/initialization.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/tasks.o: ../src/config/pic32cxmtg/tasks.c  .generated_files/flags/pic32cxmtg/1762e4631759defe98fd57dfd23b0d8da383fc21 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/tasks.o.d" -o ${OBJECTDIR}/_ext/1545560501/tasks.o ../src/config/pic32cxmtg/tasks.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/startup_xc32.o: ../src/config/pic32cxmtg/startup_xc32.c  .generated_files/flags/pic32cxmtg/3929da5189f6bfaacc9ed82fd1fedbe5835dad2c .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1545560501/startup_xc32.o ../src/config/pic32cxmtg/startup_xc32.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/exceptions.o: ../src/config/pic32cxmtg/exceptions.c  .generated_files/flags/pic32cxmtg/1711510c18dcb8175727c9f187217692bf1605e0 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/exceptions.o.d" -o ${OBJECTDIR}/_ext/1545560501/exceptions.o ../src/config/pic32cxmtg/exceptions.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/libc_syscalls.o: ../src/config/pic32cxmtg/libc_syscalls.c  .generated_files/flags/pic32cxmtg/88e4c792c3518fc012f6a0de959a59e71ee57718 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o ../src/config/pic32cxmtg/libc_syscalls.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/interrupts.o: ../src/config/pic32cxmtg/interrupts.c  .generated_files/flags/pic32cxmtg/5af934d56fc59badd7b508720a1ddfa413bb27ce .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/interrupts.o.d" -o ${OBJECTDIR}/_ext/1545560501/interrupts.o ../src/config/pic32cxmtg/interrupts.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cxmtg/64fbe098e886087ec4d052372f08d95e28ea1fff .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32cxmtg/cb5056ef0fbcc2362261d30943956e5f4e2877f2 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051552217/plib_uart.o: ../src/config/pic32cxmtg/peripheral/uart/plib_uart.c  .generated_files/flags/pic32cxmtg/538361387efd1627cc5d26fff388311a94ec31b3 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051552217" 
	@${RM} ${OBJECTDIR}/_ext/1051552217/plib_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051552217/plib_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051552217/plib_uart.o.d" -o ${OBJECTDIR}/_ext/1051552217/plib_uart.o ../src/config/pic32cxmtg/peripheral/uart/plib_uart.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1785439515/bsp.o: ../src/config/pic32cxmtg/bsp/bsp.c  .generated_files/flags/pic32cxmtg/ba8c4bd1d1a3d304b7380fa53be094780f6519af .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1785439515" 
	@${RM} ${OBJECTDIR}/_ext/1785439515/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1785439515/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1785439515/bsp.o.d" -o ${OBJECTDIR}/_ext/1785439515/bsp.o ../src/config/pic32cxmtg/bsp/bsp.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160729472/drv_plc_boot.o: ../src/config/pic32cxmtg/driver/plc/common/drv_plc_boot.c  .generated_files/flags/pic32cxmtg/f5cf59d9d35fae870e317542162221cd6550f2d9 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160729472" 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160729472/drv_plc_boot.o.d" -o ${OBJECTDIR}/_ext/160729472/drv_plc_boot.o ../src/config/pic32cxmtg/driver/plc/common/drv_plc_boot.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160729472/drv_plc_hal.o: ../src/config/pic32cxmtg/driver/plc/common/drv_plc_hal.c  .generated_files/flags/pic32cxmtg/58b31d12427ce5fc08d4e5bc4be6607e6f6e574 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160729472" 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160729472/drv_plc_hal.o.d" -o ${OBJECTDIR}/_ext/160729472/drv_plc_hal.o ../src/config/pic32cxmtg/driver/plc/common/drv_plc_hal.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o: ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt.c  .generated_files/flags/pic32cxmtg/c68dbe967910d615b6ad6e003dc33b1f5f84b8b1 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1804977744" 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o.d" -o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt.o ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o: ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt_local_comm.c  .generated_files/flags/pic32cxmtg/ae0a93850c2007cf4a71cf841256a588917b912a .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1804977744" 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o.d" -o ${OBJECTDIR}/_ext/1804977744/drv_g3_macrt_local_comm.o ../src/config/pic32cxmtg/driver/plc/g3MacRt/drv_g3_macrt_local_comm.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/33940185/plib_adc.o: ../src/config/pic32cxmtg/peripheral/adc/plib_adc.c  .generated_files/flags/pic32cxmtg/3013e2c540a756b8c7b109822f390c024bdf15bc .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/33940185" 
	@${RM} ${OBJECTDIR}/_ext/33940185/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/33940185/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/33940185/plib_adc.o.d" -o ${OBJECTDIR}/_ext/33940185/plib_adc.o ../src/config/pic32cxmtg/peripheral/adc/plib_adc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/33938007/plib_clk.o: ../src/config/pic32cxmtg/peripheral/clk/plib_clk.c  .generated_files/flags/pic32cxmtg/3750dc3977c7ec16457dd3b239a84abcf381d307 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/33938007" 
	@${RM} ${OBJECTDIR}/_ext/33938007/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/33938007/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/33938007/plib_clk.o.d" -o ${OBJECTDIR}/_ext/33938007/plib_clk.o ../src/config/pic32cxmtg/peripheral/clk/plib_clk.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1052077405/plib_cmcc.o: ../src/config/pic32cxmtg/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32cxmtg/22a3cb3b487f31fd8b693fbc40234284b4abaa0d .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1052077405" 
	@${RM} ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1052077405/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1052077405/plib_cmcc.o ../src/config/pic32cxmtg/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1052037956/plib_dwdt.o: ../src/config/pic32cxmtg/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/pic32cxmtg/55442890da21a43a6d604c53b9f0ee59b3586b8c .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1052037956" 
	@${RM} ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1052037956/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/1052037956/plib_dwdt.o ../src/config/pic32cxmtg/peripheral/dwdt/plib_dwdt.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o: ../src/config/pic32cxmtg/peripheral/flexcom/spi/master/plib_flexcom5_spi_master.c  .generated_files/flags/pic32cxmtg/c9f1423594aa49146344537e122423e03468fe5e .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1016581701" 
	@${RM} ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o.d" -o ${OBJECTDIR}/_ext/1016581701/plib_flexcom5_spi_master.o ../src/config/pic32cxmtg/peripheral/flexcom/spi/master/plib_flexcom5_spi_master.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o: ../src/config/pic32cxmtg/peripheral/flexcom/usart/plib_flexcom0_usart.c  .generated_files/flags/pic32cxmtg/3479e96a24ce70e398aaa02bc4fc2bf2fbded0c .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260474139" 
	@${RM} ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o.d" -o ${OBJECTDIR}/_ext/1260474139/plib_flexcom0_usart.o ../src/config/pic32cxmtg/peripheral/flexcom/usart/plib_flexcom0_usart.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051740869/plib_nvic.o: ../src/config/pic32cxmtg/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cxmtg/6ac0ae48ffcdb09a7281e9c53cdf949e6cad0234 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051740869" 
	@${RM} ${OBJECTDIR}/_ext/1051740869/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051740869/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051740869/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1051740869/plib_nvic.o ../src/config/pic32cxmtg/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/33925603/plib_pio.o: ../src/config/pic32cxmtg/peripheral/pio/plib_pio.c  .generated_files/flags/pic32cxmtg/64abe5548588c082efc1cbfe5b1d02a1c27c75f .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/33925603" 
	@${RM} ${OBJECTDIR}/_ext/33925603/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/33925603/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/33925603/plib_pio.o.d" -o ${OBJECTDIR}/_ext/33925603/plib_pio.o ../src/config/pic32cxmtg/peripheral/pio/plib_pio.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051624247/plib_rstc.o: ../src/config/pic32cxmtg/peripheral/rstc/plib_rstc.c  .generated_files/flags/pic32cxmtg/60cf01c7f737a9a3b1ae893bc5e5d9d4a5c24efa .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051624247" 
	@${RM} ${OBJECTDIR}/_ext/1051624247/plib_rstc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051624247/plib_rstc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051624247/plib_rstc.o.d" -o ${OBJECTDIR}/_ext/1051624247/plib_rstc.o ../src/config/pic32cxmtg/peripheral/rstc/plib_rstc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051608344/plib_sefc0.o: ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc0.c  .generated_files/flags/pic32cxmtg/6cc3e674c76eaefa2327117d36568ef7eb961e82 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051608344" 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051608344/plib_sefc0.o.d" -o ${OBJECTDIR}/_ext/1051608344/plib_sefc0.o ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc0.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051608344/plib_sefc1.o: ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc1.c  .generated_files/flags/pic32cxmtg/7bf773c7248c44bb1a6b753169aec9b667206d18 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051608344" 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051608344/plib_sefc1.o.d" -o ${OBJECTDIR}/_ext/1051608344/plib_sefc1.o ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc1.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o: ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc_common.c  .generated_files/flags/pic32cxmtg/3dd3d316013468b57cfd9a37363644e5966c7233 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051608344" 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o.d" -o ${OBJECTDIR}/_ext/1051608344/plib_sefc_common.o ../src/config/pic32cxmtg/peripheral/sefc/plib_sefc_common.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051592658/plib_supc.o: ../src/config/pic32cxmtg/peripheral/supc/plib_supc.c  .generated_files/flags/pic32cxmtg/1d6876f17958995508f237e0bf4336b0ab6db25 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051592658" 
	@${RM} ${OBJECTDIR}/_ext/1051592658/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051592658/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051592658/plib_supc.o.d" -o ${OBJECTDIR}/_ext/1051592658/plib_supc.o ../src/config/pic32cxmtg/peripheral/supc/plib_supc.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139641592/plib_tc0.o: ../src/config/pic32cxmtg/peripheral/tc/plib_tc0.c  .generated_files/flags/pic32cxmtg/52512d8896d019ac3cb6c2aec566bf97347a8405 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/139641592" 
	@${RM} ${OBJECTDIR}/_ext/139641592/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/139641592/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139641592/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/139641592/plib_tc0.o ../src/config/pic32cxmtg/peripheral/tc/plib_tc0.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051565808/plib_trng.o: ../src/config/pic32cxmtg/peripheral/trng/plib_trng.c  .generated_files/flags/pic32cxmtg/194092445652a1dd8fe22ecf2b3190c516e451bb .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051565808" 
	@${RM} ${OBJECTDIR}/_ext/1051565808/plib_trng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051565808/plib_trng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051565808/plib_trng.o.d" -o ${OBJECTDIR}/_ext/1051565808/plib_trng.o ../src/config/pic32cxmtg/peripheral/trng/plib_trng.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540903485/srv_pcoup.o: ../src/config/pic32cxmtg/service/pcoup/srv_pcoup.c  .generated_files/flags/pic32cxmtg/baf43bf31428af8347bbfbffc8689492dd3d37dd .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540903485" 
	@${RM} ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540903485/srv_pcoup.o.d" -o ${OBJECTDIR}/_ext/1540903485/srv_pcoup.o ../src/config/pic32cxmtg/service/pcoup/srv_pcoup.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o: ../src/config/pic32cxmtg/service/pvddmon/srv_pvddmon.c  .generated_files/flags/pic32cxmtg/20fee51c74be5f2778497d94a80603fe88d2157f .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1488757394" 
	@${RM} ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o.d" -o ${OBJECTDIR}/_ext/1488757394/srv_pvddmon.o ../src/config/pic32cxmtg/service/pvddmon/srv_pvddmon.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2099701329/xc32_monitor.o: ../src/config/pic32cxmtg/stdio/xc32_monitor.c  .generated_files/flags/pic32cxmtg/48bd884c12c2e61b822786f58bc667c4334d5ebd .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2099701329" 
	@${RM} ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2099701329/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2099701329/xc32_monitor.o ../src/config/pic32cxmtg/stdio/xc32_monitor.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1407433284/sys_cache.o: ../src/config/pic32cxmtg/system/cache/sys_cache.c  .generated_files/flags/pic32cxmtg/e1674f6a9ece2fea36a1fe73c364773c5dfe4216 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1407433284" 
	@${RM} ${OBJECTDIR}/_ext/1407433284/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407433284/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407433284/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1407433284/sys_cache.o ../src/config/pic32cxmtg/system/cache/sys_cache.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1787564926/sys_int.o: ../src/config/pic32cxmtg/system/int/src/sys_int.c  .generated_files/flags/pic32cxmtg/fa1699c1917f5f3ee1759beae7d3d33d192c5e36 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1787564926" 
	@${RM} ${OBJECTDIR}/_ext/1787564926/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1787564926/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1787564926/sys_int.o.d" -o ${OBJECTDIR}/_ext/1787564926/sys_int.o ../src/config/pic32cxmtg/system/int/src/sys_int.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1275873064/sys_time.o: ../src/config/pic32cxmtg/system/time/src/sys_time.c  .generated_files/flags/pic32cxmtg/b612dbcb9327c053ec5b3a3187d90be64112cb92 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1275873064" 
	@${RM} ${OBJECTDIR}/_ext/1275873064/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1275873064/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1275873064/sys_time.o.d" -o ${OBJECTDIR}/_ext/1275873064/sys_time.o ../src/config/pic32cxmtg/system/time/src/sys_time.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/initialization.o: ../src/config/pic32cxmtg/initialization.c  .generated_files/flags/pic32cxmtg/5a61dae6cfca19c9bf45f619a460f13e12d3f33e .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/initialization.o.d" -o ${OBJECTDIR}/_ext/1545560501/initialization.o ../src/config/pic32cxmtg/initialization.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/tasks.o: ../src/config/pic32cxmtg/tasks.c  .generated_files/flags/pic32cxmtg/71be8631315a822cf7e2b996cbdd8720664cdd1 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/tasks.o.d" -o ${OBJECTDIR}/_ext/1545560501/tasks.o ../src/config/pic32cxmtg/tasks.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/startup_xc32.o: ../src/config/pic32cxmtg/startup_xc32.c  .generated_files/flags/pic32cxmtg/a08b493c87546b8e18f4b9116b374b388e6f847a .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1545560501/startup_xc32.o ../src/config/pic32cxmtg/startup_xc32.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/exceptions.o: ../src/config/pic32cxmtg/exceptions.c  .generated_files/flags/pic32cxmtg/368787e127a2e6bad501ce3f08a0b152dd7ee077 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/exceptions.o.d" -o ${OBJECTDIR}/_ext/1545560501/exceptions.o ../src/config/pic32cxmtg/exceptions.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/libc_syscalls.o: ../src/config/pic32cxmtg/libc_syscalls.c  .generated_files/flags/pic32cxmtg/78182b8294f5b686ccbb9d353abfe195684afd4b .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1545560501/libc_syscalls.o ../src/config/pic32cxmtg/libc_syscalls.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1545560501/interrupts.o: ../src/config/pic32cxmtg/interrupts.c  .generated_files/flags/pic32cxmtg/b78651aa0076ee92b907059b372dc47bc799332a .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1545560501" 
	@${RM} ${OBJECTDIR}/_ext/1545560501/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1545560501/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1545560501/interrupts.o.d" -o ${OBJECTDIR}/_ext/1545560501/interrupts.o ../src/config/pic32cxmtg/interrupts.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cxmtg/497eb79bd4656d81a9e1b425468f5ce142e7e7c2 .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32cxmtg/9b6d60e9ddc09904aa685da37591ff4db2d6f2ef .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1051552217/plib_uart.o: ../src/config/pic32cxmtg/peripheral/uart/plib_uart.c  .generated_files/flags/pic32cxmtg/277a019b71c23c852aaded076c6ed88c57e720de .generated_files/flags/pic32cxmtg/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1051552217" 
	@${RM} ${OBJECTDIR}/_ext/1051552217/plib_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051552217/plib_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cxmtg" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CX2051MTG128_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1051552217/plib_uart.o.d" -o ${OBJECTDIR}/_ext/1051552217/plib_uart.o ../src/config/pic32cxmtg/peripheral/uart/plib_uart.c    -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CX-MTG" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32cxmtg/PIC32CX2051MTG128.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -mno-device-startup-code -o ${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/PIC32CX-MTG"
	
else
${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32cxmtg/PIC32CX2051MTG128.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -mno-device-startup-code -o ${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cxmtg=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/PIC32CX-MTG"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32cxmtg_ek.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
