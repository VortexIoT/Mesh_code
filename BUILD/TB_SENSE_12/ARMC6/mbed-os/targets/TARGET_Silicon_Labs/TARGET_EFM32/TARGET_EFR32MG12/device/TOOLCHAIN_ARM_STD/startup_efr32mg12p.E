# 1 ".\\mbed-os\\targets\\TARGET_Silicon_Labs\\TARGET_EFM32\\TARGET_EFR32MG12\\device\\TOOLCHAIN_ARM_STD\\startup_efr32mg12p.S"
# 1 "<built-in>" 1
# 391 "<built-in>"
# 1 "./BUILD/TB_SENSE_12/ARMC6\\mbed_config.h" 1
# 392 "<built-in>" 2
# 1 ".\\mbed-os\\targets\\TARGET_Silicon_Labs\\TARGET_EFM32\\TARGET_EFR32MG12\\device\\TOOLCHAIN_ARM_STD\\startup_efr32mg12p.S" 2
;
# 26 ".\\mbed-os\\targets\\TARGET_Silicon_Labs\\TARGET_EFM32\\TARGET_EFR32MG12\\device\\TOOLCHAIN_ARM_STD\\startup_efr32mg12p.S"
                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset

                AREA RESET, DATA, READONLY, ALIGN=8
                EXPORT __Vectors
                EXPORT __Vectors_End
                EXPORT __Vectors_Size
                IMPORT |Image$$ARM_LIB_STACK$$ZI$$Limit|

__Vectors DCD |Image$$ARM_LIB_STACK$$ZI$$Limit| ; Top of Stack
                DCD Reset_Handler ; Reset Handler
                DCD NMI_Handler ; NMI Handler
                DCD HardFault_Handler ; Hard Fault Handler
                DCD MemManage_Handler ; MPU Fault Handler
                DCD BusFault_Handler ; Bus Fault Handler
                DCD UsageFault_Handler ; Usage Fault Handler
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD SVC_Handler ; SVCall Handler
                DCD DebugMon_Handler ; Debug Monitor Handler
                DCD 0 ; Reserved
                DCD PendSV_Handler ; PendSV Handler
                DCD SysTick_Handler ; SysTick Handler

                ; External Interrupts

                DCD EMU_IRQHandler ; 0: EMU Interrupt
                DCD FRC_PRI_IRQHandler ; 1: FRC_PRI Interrupt
                DCD WDOG0_IRQHandler ; 2: WDOG0 Interrupt
                DCD WDOG1_IRQHandler ; 3: WDOG1 Interrupt
                DCD FRC_IRQHandler ; 4: FRC Interrupt
                DCD MODEM_IRQHandler ; 5: MODEM Interrupt
                DCD RAC_SEQ_IRQHandler ; 6: RAC_SEQ Interrupt
                DCD RAC_RSM_IRQHandler ; 7: RAC_RSM Interrupt
                DCD BUFC_IRQHandler ; 8: BUFC Interrupt
                DCD LDMA_IRQHandler ; 9: LDMA Interrupt
                DCD GPIO_EVEN_IRQHandler ; 10: GPIO_EVEN Interrupt
                DCD TIMER0_IRQHandler ; 11: TIMER0 Interrupt
                DCD USART0_RX_IRQHandler ; 12: USART0_RX Interrupt
                DCD USART0_TX_IRQHandler ; 13: USART0_TX Interrupt
                DCD ACMP0_IRQHandler ; 14: ACMP0 Interrupt
                DCD ADC0_IRQHandler ; 15: ADC0 Interrupt
                DCD IDAC0_IRQHandler ; 16: IDAC0 Interrupt
                DCD I2C0_IRQHandler ; 17: I2C0 Interrupt
                DCD GPIO_ODD_IRQHandler ; 18: GPIO_ODD Interrupt
                DCD TIMER1_IRQHandler ; 19: TIMER1 Interrupt
                DCD USART1_RX_IRQHandler ; 20: USART1_RX Interrupt
                DCD USART1_TX_IRQHandler ; 21: USART1_TX Interrupt
                DCD LEUART0_IRQHandler ; 22: LEUART0 Interrupt
                DCD PCNT0_IRQHandler ; 23: PCNT0 Interrupt
                DCD CMU_IRQHandler ; 24: CMU Interrupt
                DCD MSC_IRQHandler ; 25: MSC Interrupt
                DCD CRYPTO0_IRQHandler ; 26: CRYPTO0 Interrupt
                DCD LETIMER0_IRQHandler ; 27: LETIMER0 Interrupt
                DCD AGC_IRQHandler ; 28: AGC Interrupt
                DCD PROTIMER_IRQHandler ; 29: PROTIMER Interrupt
                DCD RTCC_IRQHandler ; 30: RTCC Interrupt
                DCD SYNTH_IRQHandler ; 31: SYNTH Interrupt
                DCD CRYOTIMER_IRQHandler ; 32: CRYOTIMER Interrupt
                DCD RFSENSE_IRQHandler ; 33: RFSENSE Interrupt
                DCD FPUEH_IRQHandler ; 34: FPUEH Interrupt
                DCD SMU_IRQHandler ; 35: SMU Interrupt
                DCD WTIMER0_IRQHandler ; 36: WTIMER0 Interrupt
                DCD WTIMER1_IRQHandler ; 37: WTIMER1 Interrupt
                DCD PCNT1_IRQHandler ; 38: PCNT1 Interrupt
                DCD PCNT2_IRQHandler ; 39: PCNT2 Interrupt
                DCD USART2_RX_IRQHandler ; 40: USART2_RX Interrupt
                DCD USART2_TX_IRQHandler ; 41: USART2_TX Interrupt
                DCD I2C1_IRQHandler ; 42: I2C1 Interrupt
                DCD USART3_RX_IRQHandler ; 43: USART3_RX Interrupt
                DCD USART3_TX_IRQHandler ; 44: USART3_TX Interrupt
                DCD VDAC0_IRQHandler ; 45: VDAC0 Interrupt
                DCD CSEN_IRQHandler ; 46: CSEN Interrupt
                DCD LESENSE_IRQHandler ; 47: LESENSE Interrupt
                DCD CRYPTO1_IRQHandler ; 48: CRYPTO1 Interrupt
                DCD TRNG0_IRQHandler ; 49: TRNG0 Interrupt
                DCD 0 ; 50: Reserved

__Vectors_End
__Vectors_Size EQU __Vectors_End - __Vectors

                AREA |.text|, CODE, READONLY


; Reset Handler

Reset_Handler PROC
                EXPORT Reset_Handler [WEAK]
                IMPORT SystemInit
                IMPORT __main
                LDR R0, =SystemInit
                BLX R0
                LDR R0, =__main
                BX R0
                ENDP


; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler PROC
                EXPORT NMI_Handler [WEAK]
                B .
                ENDP
HardFault_Handler PROC

                EXPORT HardFault_Handler [WEAK]
                B .
                ENDP
MemManage_Handler PROC

                EXPORT MemManage_Handler [WEAK]
                B .
                ENDP
BusFault_Handler PROC

                EXPORT BusFault_Handler [WEAK]
                B .
                ENDP
UsageFault_Handler PROC

                EXPORT UsageFault_Handler [WEAK]
                B .
                ENDP
SVC_Handler PROC
                EXPORT SVC_Handler [WEAK]
                B .
                ENDP
DebugMon_Handler PROC

                EXPORT DebugMon_Handler [WEAK]
                B .
                ENDP
PendSV_Handler PROC
                EXPORT PendSV_Handler [WEAK]
                B .
                ENDP
SysTick_Handler PROC
                EXPORT SysTick_Handler [WEAK]
                B .
                ENDP

Default_Handler PROC

                EXPORT EMU_IRQHandler [WEAK]
                EXPORT FRC_PRI_IRQHandler [WEAK]
                EXPORT WDOG0_IRQHandler [WEAK]
                EXPORT WDOG1_IRQHandler [WEAK]
                EXPORT FRC_IRQHandler [WEAK]
                EXPORT MODEM_IRQHandler [WEAK]
                EXPORT RAC_SEQ_IRQHandler [WEAK]
                EXPORT RAC_RSM_IRQHandler [WEAK]
                EXPORT BUFC_IRQHandler [WEAK]
                EXPORT LDMA_IRQHandler [WEAK]
                EXPORT GPIO_EVEN_IRQHandler [WEAK]
                EXPORT TIMER0_IRQHandler [WEAK]
                EXPORT USART0_RX_IRQHandler [WEAK]
                EXPORT USART0_TX_IRQHandler [WEAK]
                EXPORT ACMP0_IRQHandler [WEAK]
                EXPORT ADC0_IRQHandler [WEAK]
                EXPORT IDAC0_IRQHandler [WEAK]
                EXPORT I2C0_IRQHandler [WEAK]
                EXPORT GPIO_ODD_IRQHandler [WEAK]
                EXPORT TIMER1_IRQHandler [WEAK]
                EXPORT USART1_RX_IRQHandler [WEAK]
                EXPORT USART1_TX_IRQHandler [WEAK]
                EXPORT LEUART0_IRQHandler [WEAK]
                EXPORT PCNT0_IRQHandler [WEAK]
                EXPORT CMU_IRQHandler [WEAK]
                EXPORT MSC_IRQHandler [WEAK]
                EXPORT CRYPTO0_IRQHandler [WEAK]
                EXPORT LETIMER0_IRQHandler [WEAK]
                EXPORT AGC_IRQHandler [WEAK]
                EXPORT PROTIMER_IRQHandler [WEAK]
                EXPORT RTCC_IRQHandler [WEAK]
                EXPORT SYNTH_IRQHandler [WEAK]
                EXPORT CRYOTIMER_IRQHandler [WEAK]
                EXPORT RFSENSE_IRQHandler [WEAK]
                EXPORT FPUEH_IRQHandler [WEAK]
                EXPORT SMU_IRQHandler [WEAK]
                EXPORT WTIMER0_IRQHandler [WEAK]
                EXPORT WTIMER1_IRQHandler [WEAK]
                EXPORT PCNT1_IRQHandler [WEAK]
                EXPORT PCNT2_IRQHandler [WEAK]
                EXPORT USART2_RX_IRQHandler [WEAK]
                EXPORT USART2_TX_IRQHandler [WEAK]
                EXPORT I2C1_IRQHandler [WEAK]
                EXPORT USART3_RX_IRQHandler [WEAK]
                EXPORT USART3_TX_IRQHandler [WEAK]
                EXPORT VDAC0_IRQHandler [WEAK]
                EXPORT CSEN_IRQHandler [WEAK]
                EXPORT LESENSE_IRQHandler [WEAK]
                EXPORT CRYPTO1_IRQHandler [WEAK]
                EXPORT TRNG0_IRQHandler [WEAK]


EMU_IRQHandler
FRC_PRI_IRQHandler
WDOG0_IRQHandler
WDOG1_IRQHandler
FRC_IRQHandler
MODEM_IRQHandler
RAC_SEQ_IRQHandler
RAC_RSM_IRQHandler
BUFC_IRQHandler
LDMA_IRQHandler
GPIO_EVEN_IRQHandler
TIMER0_IRQHandler
USART0_RX_IRQHandler
USART0_TX_IRQHandler
ACMP0_IRQHandler
ADC0_IRQHandler
IDAC0_IRQHandler
I2C0_IRQHandler
GPIO_ODD_IRQHandler
TIMER1_IRQHandler
USART1_RX_IRQHandler
USART1_TX_IRQHandler
LEUART0_IRQHandler
PCNT0_IRQHandler
CMU_IRQHandler
MSC_IRQHandler
CRYPTO0_IRQHandler
LETIMER0_IRQHandler
AGC_IRQHandler
PROTIMER_IRQHandler
RTCC_IRQHandler
SYNTH_IRQHandler
CRYOTIMER_IRQHandler
RFSENSE_IRQHandler
FPUEH_IRQHandler
SMU_IRQHandler
WTIMER0_IRQHandler
WTIMER1_IRQHandler
PCNT1_IRQHandler
PCNT2_IRQHandler
USART2_RX_IRQHandler
USART2_TX_IRQHandler
I2C1_IRQHandler
USART3_RX_IRQHandler
USART3_TX_IRQHandler
VDAC0_IRQHandler
CSEN_IRQHandler
LESENSE_IRQHandler
CRYPTO1_IRQHandler
TRNG0_IRQHandler
                B .
                ENDP

                ALIGN

                END
