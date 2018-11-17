;**********************************************************************
; TM4C123GH6PM 启动脚本
;**********************************************************************


; 初始化栈

        AREA    STACK, NOINIT, READWRITE, ALIGN=3
__stack_base
StackMem
        SPACE Stack_Size; 栈大小，由命令行参数给出， --pd "Stack_Size SETA 512"
__stack_limit
__initial_sp

; 初始化堆
        AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
HeapMem
        SPACE Heap_Size ; 堆大小，由命令行参数给出， --pd "Heap_Size SETA 0"
__heap_limit

        PRESERVE8 ; 栈需要8字节对齐 

        AREA RESET, DATA, READONLY
        EXPORT __Vectors
        EXPORT __Vectors_End
        EXPORT __Vectors_Size

__Vectors ; 中断向量表
        DCD __initial_sp ; 栈顶指针
        DCD Reset_Handler ; ResetHandler 启动入口函数
        DCD     NMI_Handler                 ; NMI Handler
        DCD     HardFault_Handler           ; Hard Fault Handler
        DCD     MemManage_Handler           ; The MPU fault handler
        DCD     BusFault_Handler            ; The bus fault handler
        DCD     UsageFault_Handler          ; The usage fault handler
        DCD     0                           ; Reserved
        DCD     0                           ; Reserved
        DCD     0                           ; Reserved
        DCD     0                           ; Reserved
        DCD     SVC_Handler                 ; SVCall handler
        DCD     DebugMon_Handler            ; Debug monitor handler
        DCD     0                           ; Reserved
        DCD     PendSV_Handler              ; The PendSV handler
        DCD     SysTick_Handler             ; The SysTick handler

        ; IRQ handlers...
        DCD     GPIOPortA_IRQHandler       ; GPIO Port A
        DCD     GPIOPortB_IRQHandler       ; GPIO Port B
        DCD     GPIOPortC_IRQHandler       ; GPIO Port C
        DCD     GPIOPortD_IRQHandler       ; GPIO Port D
        DCD     GPIOPortE_IRQHandler       ; GPIO Port E
        DCD     UART0_IRQHandler           ; UART0 Rx and Tx
        DCD     UART1_IRQHandler           ; UART1 Rx and Tx
        DCD     SSI0_IRQHandler            ; SSI0 Rx and Tx
        DCD     I2C0_IRQHandler            ; I2C0 Master and Slave
        DCD     PWMFault_IRQHandler        ; PWM Fault
        DCD     PWMGen0_IRQHandler         ; PWM Generator 0
        DCD     PWMGen1_IRQHandler         ; PWM Generator 1
        DCD     PWMGen2_IRQHandler         ; PWM Generator 2
        DCD     QEI0_IRQHandler            ; Quadrature Encoder 0
        DCD     ADCSeq0_IRQHandler         ; ADC Sequence 0
        DCD     ADCSeq1_IRQHandler         ; ADC Sequence 1
        DCD     ADCSeq2_IRQHandler         ; ADC Sequence 2
        DCD     ADCSeq3_IRQHandler         ; ADC Sequence 3
        DCD     Watchdog_IRQHandler        ; Watchdog timer
        DCD     Timer0A_IRQHandler         ; Timer 0 subtimer A
        DCD     Timer0B_IRQHandler         ; Timer 0 subtimer B
        DCD     Timer1A_IRQHandler         ; Timer 1 subtimer A
        DCD     Timer1B_IRQHandler         ; Timer 1 subtimer B
        DCD     Timer2A_IRQHandler         ; Timer 2 subtimer A
        DCD     Timer2B_IRQHandler         ; Timer 2 subtimer B
        DCD     Comp0_IRQHandler           ; Analog Comparator 0
        DCD     Comp1_IRQHandler           ; Analog Comparator 1
        DCD     Comp2_IRQHandler           ; Analog Comparator 2
        DCD     SysCtrl_IRQHandler         ; System Control (PLL, OSC, BO)
        DCD     FlashCtrl_IRQHandler       ; FLASH Control
        DCD     GPIOPortF_IRQHandler       ; GPIO Port F
        DCD     GPIOPortG_IRQHandler       ; GPIO Port G
        DCD     GPIOPortH_IRQHandler       ; GPIO Port H
        DCD     UART2_IRQHandler           ; UART2 Rx and Tx
        DCD     SSI1_IRQHandler            ; SSI1 Rx and Tx
        DCD     Timer3A_IRQHandler         ; Timer 3 subtimer A
        DCD     Timer3B_IRQHandler         ; Timer 3 subtimer B
        DCD     I2C1_IRQHandler            ; I2C1 Master and Slave
        DCD     QEI1_IRQHandler            ; Quadrature Encoder 1
        DCD     CAN0_IRQHandler            ; CAN0
        DCD     CAN1_IRQHandler            ; CAN1
        DCD     CAN2_IRQHandler            ; CAN2
        DCD     0                          ; Reserved
        DCD     Hibernate_IRQHandler       ; Hibernate
        DCD     USB0_IRQHandler            ; USB0
        DCD     PWMGen3_IRQHandler         ; PWM Generator 3
        DCD     uDMAST_IRQHandler          ; uDMA Software Transfer
        DCD     uDMAError_IRQHandler       ; uDMA Error
        DCD     ADC1Seq0_IRQHandler        ; ADC1 Sequence 0
        DCD     ADC1Seq1_IRQHandler        ; ADC1 Sequence 1
        DCD     ADC1Seq2_IRQHandler        ; ADC1 Sequence 2
        DCD     ADC1Seq3_IRQHandler        ; ADC1 Sequence 3
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     GPIOPortJ_IRQHandler       ; GPIO Port J
        DCD     GPIOPortK_IRQHandler       ; GPIO Port K
        DCD     GPIOPortL_IRQHandler       ; GPIO Port L
        DCD     SSI2_IRQHandler            ; SSI2 Rx and Tx
        DCD     SSI3_IRQHandler            ; SSI3 Rx and Tx
        DCD     UART3_IRQHandler           ; UART3 Rx and Tx
        DCD     UART4_IRQHandler           ; UART4 Rx and Tx
        DCD     UART5_IRQHandler           ; UART5 Rx and Tx
        DCD     UART6_IRQHandler           ; UART6 Rx and Tx
        DCD     UART7_IRQHandler           ; UART7 Rx and Tx
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     I2C2_IRQHandler            ; I2C2 Master and Slave
        DCD     I2C3_IRQHandler            ; I2C3 Master and Slave
        DCD     Timer4A_IRQHandler         ; Timer 4 subtimer A
        DCD     Timer4B_IRQHandler         ; Timer 4 subtimer B
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     Timer5A_IRQHandler         ; Timer 5 subtimer A
        DCD     Timer5B_IRQHandler         ; Timer 5 subtimer B
        DCD     WideTimer0A_IRQHandler     ; Wide Timer 0 subtimer A
        DCD     WideTimer0B_IRQHandler     ; Wide Timer 0 subtimer B
        DCD     WideTimer1A_IRQHandler     ; Wide Timer 1 subtimer A
        DCD     WideTimer1B_IRQHandler     ; Wide Timer 1 subtimer B
        DCD     WideTimer2A_IRQHandler     ; Wide Timer 2 subtimer A
        DCD     WideTimer2B_IRQHandler     ; Wide Timer 2 subtimer B
        DCD     WideTimer3A_IRQHandler     ; Wide Timer 3 subtimer A
        DCD     WideTimer3B_IRQHandler     ; Wide Timer 3 subtimer B
        DCD     WideTimer4A_IRQHandler     ; Wide Timer 4 subtimer A
        DCD     WideTimer4B_IRQHandler     ; Wide Timer 4 subtimer B
        DCD     WideTimer5A_IRQHandler     ; Wide Timer 5 subtimer A
        DCD     WideTimer5B_IRQHandler     ; Wide Timer 5 subtimer B
        DCD     FPU_IRQHandler             ; FPU
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     I2C4_IRQHandler            ; I2C4 Master and Slave
        DCD     I2C5_IRQHandler            ; I2C5 Master and Slave
        DCD     GPIOPortM_IRQHandler       ; GPIO Port M
        DCD     GPIOPortN_IRQHandler       ; GPIO Port N
        DCD     QEI2_IRQHandler            ; Quadrature Encoder 2
        DCD     0                          ; Reserved
        DCD     0                          ; Reserved
        DCD     GPIOPortP0_IRQHandler      ; GPIO Port P (Summary or P0)
        DCD     GPIOPortP1_IRQHandler      ; GPIO Port P1
        DCD     GPIOPortP2_IRQHandler      ; GPIO Port P2
        DCD     GPIOPortP3_IRQHandler      ; GPIO Port P3
        DCD     GPIOPortP4_IRQHandler      ; GPIO Port P4
        DCD     GPIOPortP5_IRQHandler      ; GPIO Port P5
        DCD     GPIOPortP6_IRQHandler      ; GPIO Port P6
        DCD     GPIOPortP7_IRQHandler      ; GPIO Port P7
        DCD     GPIOPortQ0_IRQHandler      ; GPIO Port Q (Summary or Q0)
        DCD     GPIOPortQ1_IRQHandler      ; GPIO Port Q1
        DCD     GPIOPortQ2_IRQHandler      ; GPIO Port Q2
        DCD     GPIOPortQ3_IRQHandler      ; GPIO Port Q3
        DCD     GPIOPortQ4_IRQHandler      ; GPIO Port Q4
        DCD     GPIOPortQ5_IRQHandler      ; GPIO Port Q5
        DCD     GPIOPortQ6_IRQHandler      ; GPIO Port Q6
        DCD     GPIOPortQ7_IRQHandler      ; GPIO Port Q7
        DCD     GPIOPortR_IRQHandler       ; GPIO Port R
        DCD     GPIOPortS_IRQHandler       ; GPIO Port S
        DCD     PWM1Gen0_IRQHandler        ; PWM 1 Generator 0
        DCD     PWM1Gen1_IRQHandler        ; PWM 1 Generator 1
        DCD     PWM1Gen2_IRQHandler        ; PWM 1 Generator 2
        DCD     PWM1Gen3_IRQHandler        ; PWM 1 Generator 3
        DCD     PWM1Fault_IRQHandler       ; PWM 1 Fault
__Vectors_End

__Vectors_Size  EQU     __Vectors_End - __Vectors


        AREA |.text|, CODE, READONLY

Reset_Handler PROC
        EXPORT Reset_Handler [WEAK]
        IMPORT SYstemInit
        IMPORT __main

        LDR r0, =SYstemInit ;CMSIS 初始化
        BLX r0

        LDR r0, =__main
        BX  r0

        MOVS r0, #0
        MOVS r0, #0
        B assert_failed

        ENDP

NMI_Handler PROC
        EXPORT NMI_Handler [WEAK]
        
        MOVS r0, #0
        MOVS r1, #2

        B assert_failed

        ENDP

HardFault_Handler PROC
        EXPORT HardFault_Handler [WEAK]

        MOVS r0, #0
        MOVS r1, #3

        B assert_failed
        
        ENDP

MemManage_Handler PROC
        EXPORT MemManage_Handler [WEAK]

        MOVS r0, #0
        MOVS r1, #4

        B assert_failed

        ENDP

BusFault_Handler PROC
        EXPORT BusFault_Handler [WEAK]

        MOVS r0, #0
        MOVS r1, #5

        B assert_failed

        ENDP

UsageFault_Handler PROC
        EXPORT UsageFault_Handler [WEAK]

        MOVS r0, #0
        MOVS r1, #6

        B assert_failed

        ENDP

; 7-10  Reserved

SVC_Handler PROC
        EXPORT SVC_Handler [WEAK]
        
        MOVS r0, #0
        MOVS r1, #11

        B assert_failed

        ENDP

DebugMon_Handler PROC
        EXPORT DebugMon_Handler [WEAK]

        MOVS r0, #0
        MOVS r1, #12

        B assert_failed 
        
        ENDP

; 13 Reserved
PendSV_Handler PROC
        EXPORT PendSV_Handler [WEAK]

        MOVS r0, #0
        MOVS r1, #14

        B assert_failed

        ENDP

SysTick_Handler PROC
        EXPORT SysTick_Handler [WEAK]

        MOVS r0, #0
        MOVS r1, #15

        B assert_failed 

        ENDP;

Default_Handler PROC
        EXPORT  GPIOPortA_IRQHandler       [WEAK]
        EXPORT  GPIOPortB_IRQHandler       [WEAK]
        EXPORT  GPIOPortC_IRQHandler       [WEAK]
        EXPORT  GPIOPortD_IRQHandler       [WEAK]
        EXPORT  GPIOPortE_IRQHandler       [WEAK]
        EXPORT  UART0_IRQHandler           [WEAK]
        EXPORT  UART1_IRQHandler           [WEAK]
        EXPORT  SSI0_IRQHandler            [WEAK]
        EXPORT  I2C0_IRQHandler            [WEAK]
        EXPORT  PWMFault_IRQHandler        [WEAK]
        EXPORT  PWMGen0_IRQHandler         [WEAK]
        EXPORT  PWMGen1_IRQHandler         [WEAK]
        EXPORT  PWMGen2_IRQHandler         [WEAK]
        EXPORT  QEI0_IRQHandler            [WEAK]
        EXPORT  ADCSeq0_IRQHandler         [WEAK]
        EXPORT  ADCSeq1_IRQHandler         [WEAK]
        EXPORT  ADCSeq2_IRQHandler         [WEAK]
        EXPORT  ADCSeq3_IRQHandler         [WEAK]
        EXPORT  Watchdog_IRQHandler        [WEAK]
        EXPORT  Timer0A_IRQHandler         [WEAK]
        EXPORT  Timer0B_IRQHandler         [WEAK]
        EXPORT  Timer1A_IRQHandler         [WEAK]
        EXPORT  Timer1B_IRQHandler         [WEAK]
        EXPORT  Timer2A_IRQHandler         [WEAK]
        EXPORT  Timer2B_IRQHandler         [WEAK]
        EXPORT  Comp0_IRQHandler           [WEAK]
        EXPORT  Comp1_IRQHandler           [WEAK]
        EXPORT  Comp2_IRQHandler           [WEAK]
        EXPORT  SysCtrl_IRQHandler         [WEAK]
        EXPORT  FlashCtrl_IRQHandler       [WEAK]
        EXPORT  GPIOPortF_IRQHandler       [WEAK]
        EXPORT  GPIOPortG_IRQHandler       [WEAK]
        EXPORT  GPIOPortH_IRQHandler       [WEAK]
        EXPORT  UART2_IRQHandler           [WEAK]
        EXPORT  SSI1_IRQHandler            [WEAK]
        EXPORT  Timer3A_IRQHandler         [WEAK]
        EXPORT  Timer3B_IRQHandler         [WEAK]
        EXPORT  I2C1_IRQHandler            [WEAK]
        EXPORT  QEI1_IRQHandler            [WEAK]
        EXPORT  CAN0_IRQHandler            [WEAK]
        EXPORT  CAN1_IRQHandler            [WEAK]
        EXPORT  CAN2_IRQHandler            [WEAK]
        EXPORT  Hibernate_IRQHandler       [WEAK]
        EXPORT  USB0_IRQHandler            [WEAK]
        EXPORT  PWMGen3_IRQHandler         [WEAK]
        EXPORT  uDMAST_IRQHandler          [WEAK]
        EXPORT  uDMAError_IRQHandler       [WEAK]
        EXPORT  ADC1Seq0_IRQHandler        [WEAK]
        EXPORT  ADC1Seq1_IRQHandler        [WEAK]
        EXPORT  ADC1Seq2_IRQHandler        [WEAK]
        EXPORT  ADC1Seq3_IRQHandler        [WEAK]
        EXPORT  GPIOPortJ_IRQHandler       [WEAK]
        EXPORT  GPIOPortK_IRQHandler       [WEAK]
        EXPORT  GPIOPortL_IRQHandler       [WEAK]
        EXPORT  SSI2_IRQHandler            [WEAK]
        EXPORT  SSI3_IRQHandler            [WEAK]
        EXPORT  UART3_IRQHandler           [WEAK]
        EXPORT  UART4_IRQHandler           [WEAK]
        EXPORT  UART5_IRQHandler           [WEAK]
        EXPORT  UART6_IRQHandler           [WEAK]
        EXPORT  UART7_IRQHandler           [WEAK]
        EXPORT  I2C2_IRQHandler            [WEAK]
        EXPORT  I2C3_IRQHandler            [WEAK]
        EXPORT  Timer4A_IRQHandler         [WEAK]
        EXPORT  Timer4B_IRQHandler         [WEAK]
        EXPORT  Timer5A_IRQHandler         [WEAK]
        EXPORT  Timer5B_IRQHandler         [WEAK]
        EXPORT  WideTimer0A_IRQHandler     [WEAK]
        EXPORT  WideTimer0B_IRQHandler     [WEAK]
        EXPORT  WideTimer1A_IRQHandler     [WEAK]
        EXPORT  WideTimer1B_IRQHandler     [WEAK]
        EXPORT  WideTimer2A_IRQHandler     [WEAK]
        EXPORT  WideTimer2B_IRQHandler     [WEAK]
        EXPORT  WideTimer3A_IRQHandler     [WEAK]
        EXPORT  WideTimer3B_IRQHandler     [WEAK]
        EXPORT  WideTimer4A_IRQHandler     [WEAK]
        EXPORT  WideTimer4B_IRQHandler     [WEAK]
        EXPORT  WideTimer5A_IRQHandler     [WEAK]
        EXPORT  WideTimer5B_IRQHandler     [WEAK]
        EXPORT  FPU_IRQHandler             [WEAK]
        EXPORT  I2C4_IRQHandler            [WEAK]
        EXPORT  I2C5_IRQHandler            [WEAK]
        EXPORT  GPIOPortM_IRQHandler       [WEAK]
        EXPORT  GPIOPortN_IRQHandler       [WEAK]
        EXPORT  QEI2_IRQHandler            [WEAK]
        EXPORT  GPIOPortP0_IRQHandler      [WEAK]
        EXPORT  GPIOPortP1_IRQHandler      [WEAK]
        EXPORT  GPIOPortP2_IRQHandler      [WEAK]
        EXPORT  GPIOPortP3_IRQHandler      [WEAK]
        EXPORT  GPIOPortP4_IRQHandler      [WEAK]
        EXPORT  GPIOPortP5_IRQHandler      [WEAK]
        EXPORT  GPIOPortP6_IRQHandler      [WEAK]
        EXPORT  GPIOPortP7_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ0_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ1_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ2_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ3_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ4_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ5_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ6_IRQHandler      [WEAK]
        EXPORT  GPIOPortQ7_IRQHandler      [WEAK]
        EXPORT  GPIOPortR_IRQHandler       [WEAK]
        EXPORT  GPIOPortS_IRQHandler       [WEAK]
        EXPORT  PWM1Gen0_IRQHandler        [WEAK]
        EXPORT  PWM1Gen1_IRQHandler        [WEAK]
        EXPORT  PWM1Gen2_IRQHandler        [WEAK]
        EXPORT  PWM1Gen3_IRQHandler        [WEAK]
        EXPORT  PWM1Fault_IRQHandler       [WEAK]

GPIOPortA_IRQHandler
GPIOPortB_IRQHandler
GPIOPortC_IRQHandler
GPIOPortD_IRQHandler
GPIOPortE_IRQHandler
UART0_IRQHandler
UART1_IRQHandler
SSI0_IRQHandler
I2C0_IRQHandler
PWMFault_IRQHandler
PWMGen0_IRQHandler
PWMGen1_IRQHandler
PWMGen2_IRQHandler
QEI0_IRQHandler
ADCSeq0_IRQHandler
ADCSeq1_IRQHandler
ADCSeq2_IRQHandler
ADCSeq3_IRQHandler
Watchdog_IRQHandler
Timer0A_IRQHandler
Timer0B_IRQHandler
Timer1A_IRQHandler
Timer1B_IRQHandler
Timer2A_IRQHandler
Timer2B_IRQHandler
Comp0_IRQHandler
Comp1_IRQHandler
Comp2_IRQHandler
SysCtrl_IRQHandler
FlashCtrl_IRQHandler
GPIOPortF_IRQHandler
GPIOPortG_IRQHandler
GPIOPortH_IRQHandler
UART2_IRQHandler
SSI1_IRQHandler
Timer3A_IRQHandler
Timer3B_IRQHandler
I2C1_IRQHandler
QEI1_IRQHandler
CAN0_IRQHandler
CAN1_IRQHandler
CAN2_IRQHandler
Hibernate_IRQHandler
USB0_IRQHandler
PWMGen3_IRQHandler
uDMAST_IRQHandler
uDMAError_IRQHandler
ADC1Seq0_IRQHandler
ADC1Seq1_IRQHandler
ADC1Seq2_IRQHandler
ADC1Seq3_IRQHandler
GPIOPortJ_IRQHandler
GPIOPortK_IRQHandler
GPIOPortL_IRQHandler
SSI2_IRQHandler
SSI3_IRQHandler
UART3_IRQHandler
UART4_IRQHandler
UART5_IRQHandler
UART6_IRQHandler
UART7_IRQHandler
I2C2_IRQHandler
I2C3_IRQHandler
Timer4A_IRQHandler
Timer4B_IRQHandler
Timer5A_IRQHandler
Timer5B_IRQHandler
WideTimer0A_IRQHandler
WideTimer0B_IRQHandler
WideTimer1A_IRQHandler
WideTimer1B_IRQHandler
WideTimer2A_IRQHandler
WideTimer2B_IRQHandler
WideTimer3A_IRQHandler
WideTimer3B_IRQHandler
WideTimer4A_IRQHandler
WideTimer4B_IRQHandler
WideTimer5A_IRQHandler
WideTimer5B_IRQHandler
FPU_IRQHandler
I2C4_IRQHandler
I2C5_IRQHandler
GPIOPortM_IRQHandler
GPIOPortN_IRQHandler
QEI2_IRQHandler
GPIOPortP0_IRQHandler
GPIOPortP1_IRQHandler
GPIOPortP2_IRQHandler
GPIOPortP3_IRQHandler
GPIOPortP4_IRQHandler
GPIOPortP5_IRQHandler
GPIOPortP6_IRQHandler
GPIOPortP7_IRQHandler
GPIOPortQ0_IRQHandler
GPIOPortQ1_IRQHandler
GPIOPortQ2_IRQHandler
GPIOPortQ3_IRQHandler
GPIOPortQ4_IRQHandler
GPIOPortQ5_IRQHandler
GPIOPortQ6_IRQHandler
GPIOPortQ7_IRQHandler
GPIOPortR_IRQHandler
GPIOPortS_IRQHandler
PWM1Gen0_IRQHandler
PWM1Gen1_IRQHandler
PWM1Gen2_IRQHandler
PWM1Gen3_IRQHandler
PWM1Fault_IRQHandler

        MOVS    r0,#0
        MOVS    r1,#-1      ; 0xFFFFFFF
        B       assert_failed
        ENDP

    IF :DEF: __MICROLIB
        EXPORT  __initial_sp
        EXPORT  __stack_limit
        EXPORT  __heap_base
        EXPORT  __heap_limit
    ELSE
        IMPORT  __use_two_region_memory
        EXPORT  __user_initial_stackheap

__user_initial_stackheap PROC
        LDR     R0, =__heap_base
        LDR     R1, =__stack_limit
        LDR     R2, =__heap_limit
        LDR     R3, =__stack_base
        BX      LR
        ENDP
    ENDIF

        EXPORT  assert_failed
        IMPORT  Q_onAssert

assert_failed PROC
        LDR    sp,=__initial_sp
        BL     Q_onAssert

        B      .

        ENDP

        ALIGN

        END









