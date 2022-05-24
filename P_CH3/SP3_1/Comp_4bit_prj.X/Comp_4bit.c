/* =============================================================================
 UPC - EETAC - CSD - http://digsys.upc.edu

Example of using C language and PIC micro-controllers to solve logic equations
or design combinational blocks. Introducing basic I/O and low-level
programming and code organisation.

Combinational circuit to be used to learn about how to set the
digital input and outputs of the microcontroller: Comp_4bit

P_Ch3. SP3_1.
https://digsys.upc.edu/csd/plan/pla/2021Q2/pla.html#SP3_1
============================================================================= */

// This general header file includes the device specific headers like
// "pic18f4520.h". This file contains all the microcontroller declarations.
#include <xc.h>

/* ------------------------------------
    Definitions
   -------------------------------------------------------------------------- */

/* ------------------------------------
    Function prototypes
   -------------------------------------------------------------------------- */
void init_system(void);
void read_inputs(void);
void truth_table(void);
void write_outputs(void);

/* -----------------------------------
    Global variables
   -------------------------------------------------------------------------- */
/* Let's use convenient byte-type (char) variables. Each variable is an 8-bit
 * RAM memory position. */

static char Var_A;
static char Var_B;

static char Var_Gi;
static char Var_Ei;
static char Var_Li;

static char Var_GT;
static char Var_EQ;
static char Var_LT;

static char var_buf;  // An 8-bit buffer where to store partial results
static char var_buf2; // An 8-bit buffer where to store partial results
static char var_buf3; // An 8-bit buffer where to store partial results
static char var_buf4; // An 8-bit buffer where to store partial results
static char var_buf5; // An 8-bit buffer where to store partial results

/* =============================================================================
        Main function
   ========================================================================== */
void main(void)
{ // Let's make main() the simplest possible.
    init_system();
    while (1)
    { /* loop forever reading inputs and calculating outputs*/
        read_inputs();
        truth_table();
        write_outputs();
    }
}

/* ------------------------------------
    Function definitions
   -------------------------------------------------------------------------- */

//*****************************************************************************
// Initialise the microcontroller system
//*****************************************************************************
void init_system(void)
{
// Configuration bits

// These are the configuration bits translated to the XC8 Compiler
// Microcontroller general configuration bits. You don't have to change them.
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
    PORTA = 0x00; // Reset all Flip-Flops at PORTA
    LATA = 0x00;
    /* All the PortA is set to be digital I/O. Remember that the PORTA
     * can be also defined as analogue inputs*/
    ADCON1 = 0x0F;

    TRISA = 0b11111111; // Inputs: RA5 --> A(1), RA4 --> A(0)
                        // Output:  RA3 --> EQ
    PORTA = 0x00;       // Reset all Flip-Flops at PORTB
    LATB = 0x00;
    TRISB = 0b11111111; // Inputs: RB7 --> B(3), RB6 --> B(2),
                        // Inputs: RB5 --> Gi, RB4 --> Ei),
                        // Inputs: RB3 --> Li
                        // Output: RB2 --> GT
    PORTB = 0x00;       // Reset all Flip-Flops at PORTB
    LATB = 0x00;
    TRISB = 0b11111111; // Inputs: RB7 --> B(3), RB6 --> B(2),
                        // Inputs: RB5 --> Gi, RB4 --> Ei),
                        // Inputs: RB3 --> Li
                        // Output: RB2 --> GT
    PORTC = 0x00;       // Reset all Flip-Flops at PORTB
    LATB = 0x00;
    TRISB = 0b00011111; // Inputs: RB7 --> B(3), RB6 --> B(2),
                        // Inputs: RB5 --> Gi, RB4 --> Ei),
                        // Inputs: RB3 --> Li
                        // Output: RB2 --> GT
    PORTD = 0x00;       // Reset all Flip-Flops at PORTB
    LATB = 0x00;
    TRISB = 0b11111111; // Inputs: RB7 --> B(3), RB6 --> B(2),
                        // Inputs: RB5 --> Gi, RB4 --> Ei),
                        // Inputs: RB3 --> Li
                        // Output: RB2 --> GT
    GIE = 0;            // No interrupts in this  simple application
}

/* =============================================================================
 Scan inputs and process the bits so that we can set our convenient variables
 many of the variables are "char" because we can easily monitor them using
 the watch window for debugging purposes.
  =========================================================================== */
void read_inputs(void)
{
    var_buf = PORTB & 0b00001111;
    Var_B = var_buf;
    Var_A = PORTA & 0b00001111;
    var_buf = PORTC & 0b00000111;
    var_buf2 = var_buf & 0b00000001;
    Var_Li = var_buf2;
    var_buf2 = var_buf & 0b00000010;
    Var_Ei = var_buf2 >> 1;
    var_buf2 = var_buf & 0b00000100;
    Var_Gi = var_buf2 >> 2;
}

/* =============================================================================
 The behavioural description of the circuit operation or the data processing
 algorithm.
 When this function is executed, all the variables are in the software domain,
 meaning that they are completely independent of the hardware, thus the
 algorithm is compatible among microcontroller families and pin connexions.
  =========================================================================== */
void truth_table(void)
{
    // Run the truth table only if there is no input code errors
    if (Var_A > Var_B)
    {
        Var_GT = 0b00000001;
        Var_EQ = 0b00000000;
        Var_LT = 0b00000001;
    }
    else if (Var_A < Var_B)
    {
        Var_GT = 0b00000000;
        Var_EQ = 0b00000000;
        Var_LT = 0b00000001;
    }
    else if (Var_A == Var_B)
    {
        Var_GT = Var_Gi;
        Var_EQ = Var_Ei;
        Var_LT = Var_Li;
    }
}

/* =============================================================================
    Driving the output pins. Let's drive the output ports, converting
    microcontroller variables into electrical signals.
   ========================================================================== */
void write_outputs(void)
{
    // WWrite GT
    // For not disturbing the bits of no interest, let's read all the port
    var_buf = Var_LT << 5;
    var_buf2 = Var_EQ << 6;
    var_buf3 = Var_GT << 7;
    var_buf4 = PORTC & 0b00011111;
    var_buf5 = (var_buf3 | var_buf2 | var_buf | (var_buf4));
    PORTC = var_buf5;
}