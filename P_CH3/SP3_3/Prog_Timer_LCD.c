/* =============================================================================
 UPC - EETAC - CSD - https://digsys.upc.edu
 P_Ch3: Programmable timing version bases on microcontrollers

 An example on how organise a project as a dedicated processor

Features:
 * 1 ms time base
 * Programmable timing period: 16-bit  (1 ms <----> 65.535 ms)

 * Target chip PIC18F4520.
 * C language, coding in FSM style, a dedicated processor approach, which means
 * that the datapath is used for counting (a RAM variable).
 * External CLK to increment counter (RB1/INT1 on rising edges).
 * Trigger button is interrupt-driven RB0/INT0 to detect the falling edge

 * Hardware for prototyping: PICDEM2+ board

Approach/plan:
1: Specs. Study notes and projects on digsys (P12) on Timer design using
VHDL and FPGA/CPLD devices and microcontrollers

2: Plan
2.1 Hardware to adapt the PICDEM2+ board to this particular
application. For instance:
    - Timer_Out, LED, for example the one connected at RB2
    - ETP pulse (50 ms), LED, for example the one connected at RB3
    - The Trigger signal is RB0/INT0
    - The external CLK is RB1/INT1
    - PC(15..0) is a 16-bit vector using several ports pins
    - Leave PORTD free for a next expansion to attach an LCD

2.2 Software.
    - Hardware-software diagram
    - List of RAM variables
    - Software main program and interrupt service routine
    - init_system() to configure pin directions and interrupts
    - read_inputs(), bitwise operations to poll PC to RAM (var_PC)
    - write_outputs(), bitwise operations to output values from RAM
    - state_logic() and output_logic() truth tables and flowcharts
    - datapath() for counting: var_Counter_mod64k, var_Max_count
        For instance var_PC = 45678 --> var_Max_Count = 45678
        ---> Timing period (Tp) = 1 ms * 45678 = 45678 ms
        ---> the the counter will count up to var_Max_Count
    INT1 interrupt flag INT1IF every 1 ms, to be used to increment
    var_Counter_mod64k variable until the terminal count var_Max_Count

3 & 4: Develop and test interactively
Add a few features at a time using watch window until completing the project.


Features to be added in new design phases:
 * Phase #2: Prog_timer_LCD  (add a display to show ASCII messages
    or numerical data when timing)
 * Phase #3: Prog_timer_LCD_TMR2  (replace external CLK interrupts by internal
    TMR2 peripheral to generate a precision time-base for timing operations)

NOTE:The C code exemplified here is not optimised in any sense. The CSD style of
programming aims clarity and facilitating the comprehension of the basic ideas
on microcontrollers taking advantage of the previous content on combinational
and sequential systems in CSD.
============================================================================= */
#include <xc.h> // This file also includes the "pic18f4520.h" which contains
                //all the microcontroller declarations

/* 	============================================================================
        Definitions
        ===================================================================== */

/* This is the state enumeration. Check the state diagram posted on the web to
figure out which is the meaning of every state */
#define Idle 'A'
#define Setup_TP_count 'B'
#define Timing_TP 'C'
#define Setup_ETP_count 'D'
#define Timing_ETP 'E'
#define Stop_Datapath 'F'
#define 	Start_bit	'B'
#define 	Data_0		'C'
#define 	Data_1		'D'
#define 	Data_2		'E'
#define 	Data_3		'F'
#define 	End_T		'G'
#define 	End_Message	'H'

/* 	============================================================================
        Function prototypes
    ========================================================================= */
void init_system(void);
char output_logic(void);
char state_logic(void);

void datapath(void);

void read_inputs(void);
void write_outputs(void);

// This is the 'special' interrupt service routine to jump from the main program
static void interrupt ISR(void);

/* 	============================================================================
        Global variables
============================================================================= */

static char var_Timer_out; // outputs
static char var_ETP;

static char current_state; // state variable

static char var_CLK_flag; // To set the time base for datapath count
static char var_TRG_flag; // This flag is going to be set by interrupt
                          // when clicking the trigger push button
static char var_CD_flag;  // This flag is going to be set by interrupt

// Datapath variables to implement the counter, PC register and comparator.
static unsigned int var_PC; // Pulse count

// An 'int' variable is 16-bit wide and can save up to 65536 different values
static unsigned int var_Counter_mod64k;
static unsigned int var_Max_Count;

static char var_TC_flag; // This is the status signal when at terminal count

/* 	============================================================================
        Main function
        ======================================================================*/
void main(void)
{
    init_system();
    while (1)
    { /* loop forever the FSM */
        if (state_logic())
            break;
        if (output_logic())
            break;
        write_outputs(); // Write the output pins once the output variables are set
    }
    while (1)
    {
        __nop(); // The system has crashed in an illegal state and needs
                 // attention. This loop is never reached in normal operation.
                 // The only way to scape it is clicking the CD
    }
}

/* 	============================================================================
        Function definitions
        ===================================================================== */

//*****************************************************************************
// Init operations
//*****************************************************************************
void init_system(void)
{
// Microcontroller general configuration bits. No need to change them.
// PIC18F4520 Configuration Bit Settings. They can be generated automatically
// in the MPLAB X IDE

// CONFIG1H
#pragma config OSC = XT // Oscillator Section bits (XT oscillator)
#pragma config FCMEN = OFF
// Fail-Safe Clock Monitor E bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF
// Internal/External Osc Switch-over bit (Oscillator Switch-over mode disabled)

// CONFIG2L
#pragma config PWRT = ON // Power-up Timer E bit (PWRT enabled)
#pragma config BOREN = SBORDIS
// Brown-out Reset E bits (Brown-out Reset enabled in hardware
// only (SBOREN is disabled))
#pragma config BORV = 3 // Brown Out Reset Voltage bits (Minimum setting)

// CONFIG2H
#pragma config WDT = OFF
// Watchdog Timer E bit (WDT disabled (control is on the SWDTEN bit))
#pragma config WDTPS = 32768
// Watchdog Timer Postscale Sect bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = PORTC
// CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = OFF
// PORTB A/D E bit (PORTB<4:0> pins are configured
// as digital I/O on Reset)
#pragma config LPT1OSC = OFF
// Low-Power Timer1 Oscillator E bit (Timer1 configured for
// higher power operation)
#pragma config MCLRE = ON
// MCLR Pin E bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = ON
// Stack Full/Underflow Reset E bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF
// Single-Supply ICSP E bit (Single-Supply ICSP disabled)
#pragma config XINST = OFF
// Extended Instruction Set E bit (Instruction set extension and Indexed
// Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF
// Code Protection bit (Block 0 (000800-001FFFh) not code-protected)
#pragma config CP1 = OFF
// Code Protection bit (Block 1 (002000-003FFFh) not code-protected)
#pragma config CP2 = OFF
// Code Protection bit (Block 2 (004000-005FFFh) not code-protected)
#pragma config CP3 = OFF
// Code Protection bit (Block 3 (006000-007FFFh) not code-protected)

// CONFIG5H
#pragma config CPB = OFF
// Boot Block Code Protection bit
// (Boot block (000000-0007FFh) not code-protected)
#pragma config CPD = OFF
// Data EEPROM Code Protection bit (Data EEPROM not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF
// Write Protection bit (Block 0 (000800-001FFFh) not write-protected)
#pragma config WRT1 = OFF
// Write Protection bit (Block 1 (002000-003FFFh) not write-protected)
#pragma config WRT2 = OFF
    // Write Protection bit (Block 2 (004000-005FFFh) not write-protected)

#pragma config WRT3 = OFF
// Write Protection bit (Block 3 (006000-007FFFh) not write-protected)

// CONFIG6H
#pragma config WRTC = OFF
// Configuration Register Write Protection bit (Configuration registers
// (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF
// Boot Block Write Protection bit (Boot block (000000-0007FFh)
// not write-protected)
#pragma config WRTD = OFF
// Data EEPROM Write Protection bit (Data EEPROM not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF
// Table Read Protection bit (Block 0 (000800-001FFFh) not protected from
// table reads executed in other blocks)
#pragma config EBTR1 = OFF
// Table Read Protection bit (Block 1 (002000-003FFFh) not protected from
// table reads executed in other blocks)
#pragma config EBTR2 = OFF
// Table Read Protection bit (Block 2 (004000-005FFFh) not protected from table
// reads executed in other blocks)
#pragma config EBTR3 = OFF
// Table Read Protection bit (Block 3 (006000-007FFFh) not protected from table
// reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF
    // Boot Block Table Read Protection bit (Boot block (000000-0007FFh)
    // not protected from table reads executed in other blocks)

    /* -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+*/

    // Initialise starts here:
    // By default, let's declare all the unused pins as digital outputs
    // The ports:
    PORTA = 0x00; // Reset all Flip-Flops at PORTA
    LATA = 0x00;
    ADCON1 = 0x0F;      // Configures all the PORTA and PORTB(3..0) lines as digital
    TRISA = 0b00001111; // RA(3..0) is PC(7..4)

    PORTB = 0x00; // Reset all Flip-Flops at PORTB
    LATB = 0x00;
    TRISB = 0b11110011; // RB(7..4) is PC(11..8)
                        // RB0 is the INT0 TRG input
                        // RB1 is the INT1 CLK input (time base))
                        // RB2 and RB3 are outputs Timer_out and ETP
    PORTC = 0x00;
    LATC = 0x00;
    TRISC = 0b11111111; // RC(7..4) is PC(15..12)
                        // RC(3..0) is PC(3..0)

    PORTD = 0x00; // Not used
    LATD = 0x00;
    TRISD = 0x00;

    PORTE = 0x00; // Not used
    LATE = 0x00;
    TRISE = 0b00000000;

    // The INT0
    INTEDG0 = 0; // INT0 edge selection: '0' --> on falling edge
                 //(interrupt after clicking trigger pushbutton)
    INT0IE = 1;  // Enable interrupts from the INT0 pin

    // The INT1
    INTEDG1 = 1; // INT1 edge selection: '1' --> on rising edge
    INT1IE = 0;  // Disabled until the datapath has to count (only when timing)

    GIE = 1; // Global interrupts allowed

    // Initial situation at "Idle" state:
    var_Timer_out = 0;
    var_ETP = 0;

    var_TRG_flag = 0;
    var_CLK_flag = 0;
    var_CD_flag = 0;

    current_state = Idle;
}

// State_logic routine
//******************************************************************************
char state_logic(void)
{

    char error = 0;

    read_inputs();

    if (var_CLK_flag == 1)
    {
        switch (current_state)
        {
        case Idle:
            if (var_TRG_flag == 1)
                current_state = Setup_TP_count;
            break;
        case Setup_TP_count:
            current_state = Timing_TP;
            break;
        case Timing_TP:
            if (var_TC_flag == 1)
                current_state = Setup_ETP_count;
            break;
        case Setup_ETP_count:
            current_state = Timing_ETP;
            break;
        case Timing_ETP:
            if (var_TC_flag == 1)
                current_state = Stop_Datapath;
            break;
        case Stop_Datapath:
            current_state = Idle;
            break;

        default: // If this 'default' is executed is because the system crashed
            error = 1;
            break;
        }
        var_CLK_flag = 0;
    }
    return (error);
}

// Output logic routine
//******************************************************************************
char output_logic(void)
{
    char error = 0;
    switch (current_state)
    {
    case Idle:
        var_Timer_out = 0; // Outputs
        var_ETP = 0;
        break;

    case Setup_TP_count:
        var_Timer_out = 1;
        var_ETP = 0;

        read_inputs(); // This is when PC(15..0) is captured --> var_PC

        // this is clear datapath counter and select TP max count
        var_Counter_mod64k = 0;     // reset datapath counter
        var_Max_Count = var_PC - 1; // Counter capacity = var_PC

        INT1IE = 1; // Enable INT1 interrupts from the external CLK

        break;

    case Timing_TP:
        var_Timer_out = 1;
        var_ETP = 0;
        datapath(); // RAM based counter driven by INT1 (CLK)
        break;

    case Setup_ETP_count:
        var_Timer_out = 0;
        var_ETP = 1;

        // this is clear datapath counter and select ETP max count
        var_Counter_mod64k = 0; // reset datapath counter
        var_Max_Count = 50 - 1; // Max_Count = 49

        INT1IE = 1; // Enable INT1 interrupts from the external CLK
        break;

    case Timing_ETP:
        var_Timer_out = 0;
        var_ETP = 1;
        // running operational resources (datapath ON)
        datapath(); // RAM based counter driven by INT1
        break;

    case Stop_Datapath:
        var_Timer_out = 0;
        var_ETP = 0;

        var_Counter_mod64k = 0;
        var_Max_Count = 0;
        INT1IE = 0; // Disable INT1 interrupts

        var_TRG_flag = 0; // Clear trigger signals detected while working
                          // to start correctly from Idle
        break;

    default:
        error = 1;
    }
    return (error);
}

// Interrupt Service Routine to attend the pushbuttons and time-base
//******************************************************************************
static void interrupt ISR(void)
{            // Interrupt is the key word here
    GIE = 0; // Disable interrupts while attending one of them ...
    if (INT1IF == 1)
    {
        var_CLK_flag = 1; // Allows counting in the datapath
                          // Clear the interrupt flag, so that it will be interrupted again in 1ms
        INT1IF = 0;
    }
    if (INT0IF == 1)
    {
        var_TRG_flag = 1; // Set the variable to start timing
        // and clear the hardware interrupt flag bit (so that the system can be
        // interrupted again when another active edge INT0 is detected)
        INT0IF = 0;
    }
    GIE = 1; // Enable interrupts
}

/* =============================================================================
 Counter variable considered as the operational datapath to perform
 operations
  =========================================================================== */
void datapath(void)
{
    // only when a CLK edge is detected --> count up
    if (var_CLK_flag == 1)
    {
        if (var_Counter_mod64k < var_Max_Count)
        {
            var_Counter_mod64k++;
        }
        else
        {
            // Status signal from the datapath (terminal count))
            var_TC_flag = 1; // Set the state diagram variable
            // INT1IE = 0; // stop the counter not letting CLK interrupts
        }

        var_CLK_flag = 0;
    }
}

/* =============================================================================
 Poll input values. In this project there is only pulse count data to read.
  =========================================================================== */
void read_inputs(void)
{
    int var_Buff1 = 0; // local variables for partial results
    int var_Buff2 = 0;
    int var_Buff3 = 0;
    int var_Buff4 = 0;

    // Like in P9, read the port, mask bits of interest and set the variable
    var_Buff1 = (PORTA & 0b00001111) << 4; // PC(7..4)
    var_Buff2 = (PORTB & 0b11110000) << 4; // PC(11..8)
                                           // poll PORTC in a single operation
    var_Buff3 = (PORTC & 0b11111111);      //
    var_Buff4 = (var_Buff3 & 0x00F0) << 8; // PC(15..12)

    var_Buff3 = (var_Buff3 & 0b0000000000001111); // PC(3..0)
                                                  // & 0x000F;
    var_PC = var_Buff1 | var_Buff2 | var_Buff3 | var_Buff4;
}

/* =============================================================================
    Driving the output pins. Let's drive the output ports, converting
    microcontroller variables into electrical signals.
    WRITE all port pins in a single operation preserving bits of no interest
   ========================================================================== */
void write_outputs(void)
{
    char var_Buff1; // Local variable buffer for partial bitwise operations

    // Read and preserve all the bits not to be written, clear bits to write
    var_Buff1 = PORTB & 0b11110011;
    // Shift the bit of interest to the pin position, compose the port (OR)
    // and write it in a single operation
    var_Buff1 = var_Buff1 | (var_Timer_out << 2) | (var_ETP << 3);
    PORTB = var_Buff1;
    PORTD=var_Counter_mod64k;
}
