/* =============================================================================
 UPC - EETAC - CSD - http://digsys.upc.edu
Project P9 tutorial on the introduction of microcontrollers.
Dual_MUX4 combinational circuit.

Example of using C language and PIC microcontrollers to solve logic equations or
design combinational blocks. A simple way to introduce the basics of low level
programming (bitwise operations) and code organisation.
 *
 * Questions:
 * How fast is the circuit compared to a classic combinational block?
 * Which are the two methods for executing faster the circuit's code?
 * Is the process of polling inputs truly periodical?
 * How to measure the execution time of the main loop?
 * How long does it take to execute a single instruction in C?
 * Can you observe in the simulation platform Proteus the assembly language?
 *
 * NOTE: Do not study or modify this file unless you do it at the same time than
 * the flowchart of each function. This file is only a simple translation of the
 * truth table and flowcharts sketched in paper.
============================================================================= */

/* ------------------------------------
 include other files (system definitions and libraries
   -------------------------------------------------------------------------- */
// This general header file includes the device specific headers like
// "pic18f4520.h". This file contains all the microcontroller declarations
// and the MPLAB X IDE handles it all.
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
 * RAM memory position to make simple watching their values. */

static char Var_E; // Enable pin (E_L) that will be changed to active high.
static char Var_Ch0;
static char Var_Ch1; // The input for the channel 1
static char Var_Ch2;
static char Var_Ch3;
static char Var_S; // Selection of channels
static char Var_Y; // Output

static char var_Buff; // An 8-bit memory position where to store partial results
// while processing the data internally in the functions
static char var_Buff2;

// ---> So, as you see, this application will require at least 9 bytes of RAM

/* =============================================================================
        Main function
   ========================================================================== */
void main(void) { // Let's make main() the simplest possible.
    init_system();
    while (1) { /* loop forever reading inputs and calculating outputs*/

        read_inputs();
        truth_table();
        write_outputs();
    }
}

/* ------------------------------------
    Function definitions
   -------------------------------------------------------------------------- */

/* =============================================================================
    Hardware function init_system (void)
    Initialise the microcontroller system (it is like the BIOS of the uC, this
    time simply for setting port bits direction)
  =========================================================================== */
void init_system(void) {
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
    LATA = 0x00; // Another way to initialise the PORTA
    /* All the PortA is set to be digital I/O. Remember that the PORTA
     * can be also defined as analogue inputs, and this is why we must
     * configure this special register ADCON1								*/
    ADCON1 = 0x0F;
    //*************************************************
    TRISA = 0b00111000; // This is for setting the pin direction
    // '1' means an input; '0' means an output
    // RA4, RA3 and RA5 are inputs
    //*************************************************

    // TRISA 	= 0b00011000; //Let's simulate an error RA5 as output

    PORTB = 0x00; // Reset all Flip-Flops at PORTB
    LATB = 0x00;

    TRISB = 0b00001011; // RB3, RB1 and RB0 are inputs
    // RB7 is Y(1), RB2 is Y(0)

    PORTC = 0x00; // Reset all Flip-Flops at PORTC
    LATC = 0x00;
    TRISC = 0b11001000; // RC7, RC6 and RC3 are inputs
    // RC3 is E_L input
    // Let's simulate an error configuring RC3 as output when it is an input:
    // TRISC 	= 0b11000000;

    PORTD = 0x00; // Reset all Flip-Flops at PORTD
    LATD = 0x00;
    TRISD = 0b00001100; // RD3 and RD2 are inputs

    GIE = 0; // No interrupts used in this very simple application

    Var_Y = 0x00; // Output variable cleared
}

/* =============================================================================
 * Hardware function: read_inputs (void)
 Read inputs and process the bits so that we can set our convenient variables.
 Almost all the variables are "char" or "int" because we can easily monitor them
 using the watch window for debugging purposes.
  =========================================================================== */
void read_inputs(void) {
    // Let's prepare our E_L bit as a byte of memory (Var_E),
    // so that we'll be able to "watch" it when running the simulation

    // 1) Read all the bits (like LD a parallel 8-bit data register)
    // The n-bit synchronous data register is explained as a tutorial in P7
    var_Buff = PORTC;
    // 2) Mask the bit of interest ("&" is a bitwise AND)
    var_Buff = var_Buff & 0b00001000;
    // 3)NOT all the bits and clear because we rather prefer an active high variable
    var_Buff = (var_Buff ^ 0b11111111) & 0b00001000;
    ;
    // 4) Shift to the right 3 bits the partial data and save the final result
    Var_E = var_Buff >> 3;

    //        // 3) This is an alternative way: (if possible, we'll use all the time
    // bitwise operations as above)
    //            if (var_Buff == 0)
    //                Var_E = 1;
    //            else
    //                Var_E = 0;		// Now it's an Active high variable

    // Let's read/sample/poll all the PORTC to get Ch3(1..0):
    var_Buff = PORTA;
    var_Buff = var_Buff & 0b00011000; // Now mask the bits of interest
    Var_Ch3 = var_Buff >> 3; // Now shift and save

    // Let's poll all the PORTD to get Ch2(1..0):
    var_Buff = PORTD;
    Var_Ch2 = (var_Buff & 0b00001100) >> 2; // In a single instruction

    // Let's poll all the PORTC to get Ch1(1..0):
    var_Buff = PORTC;
    Var_Ch1 = (var_Buff & 0b11000000) >> 6;

    // Let's poll all the PORTB to get Ch0(0) and the PORTA to get Ch0(1)
    var_Buff = (PORTB & 0b00001000) >> 3; // Get the Ch0(0)

    var_Buff2 = (PORTA & 0b00100000) >> 4; // Get the Ch0(1))
    Var_Ch0 = var_Buff | var_Buff2; // "|" is a bitwise OR

    // Let's read the channel selection variable
    Var_S = PORTB & 0b00000011;
}

/* =============================================================================
 The behavioural description of the circuit operation or the data processing
 algorithm.
 When this function is executed, all the variables are in the software domain,
 meaning that they are completely independent of the hardware, thus the
 algorithm is compatible among microcontroller families and pin connexions.
  =========================================================================== */
void truth_table(void) {

    // This is the combinational circuit truth table described in a behavioural way:

    if (Var_S == 0 && Var_E == 1) {
        Var_Y = Var_Ch0;
    } else if (Var_S == 1 && Var_E == 1) {
        Var_Y = Var_Ch1;
    } else if (Var_S == 2 && Var_E == 1) {
        Var_Y = Var_Ch2;
    } else if (Var_S == 3 && Var_E == 1) {
        Var_Y = Var_Ch3;
    } else
        Var_Y = 0x00;
}

/* =============================================================================
 * Hardware function: write_outputs(void)
    Driving the output pins. Let's drive the output ports, converting
    microcontroller variables into electrical signals.
   ========================================================================== */
void write_outputs(void) {

    var_Buff = (Var_Y & 0b00000010) << 6; // Y(1) in RB7
    var_Buff2 = (Var_Y & 0b00000001) << 2; // Y(0) in RB2
    PORTB = var_Buff | var_Buff2;
    // It is better to write the PORT in a single instruction, thus, it will be
    // required to mask and organise the port pins as when reading inputs,
    // specially if the same port that you like to write contains already other
    // outputs.
}
