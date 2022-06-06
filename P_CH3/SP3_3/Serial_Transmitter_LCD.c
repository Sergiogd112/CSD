/* =============================================================================
 UPC - EETAC - CSD - http://digsys.upc.edu
 
 P10: FSM using a microcontroller
 * 4-bit serial transmitter 
 * Programming in FSM style a target chip PIC18F4520. 
 * C language, coding in FSM style.
 * The transmission of Data_in(3..0)start when an ST button pulse is detected at 
 the baud-rate imposed by the CLK signal.For instance, if CLK = 150 Hz, a bit is
 transmitter every 6.666 ?.
 * A pulse is generated at EoT pin when the transmission ends. 

NOTE:The C code exemplified here is not optimised in any sense. The CSD style of 
programming aims clarity and facilitating the comprehension of the basic ideas 
on microcontrollers (taking advantage of the previous content on combinational
and sequential systems in Chapters I and II.  
============================================================================= */

#include <xc.h>	// This file also includes the "pic18f4520.h" which contains 
//all the microcontroller declarations

#include <stdio.h>
#include "lcd.h"   // Functions from the LCD

/* 	============================================================================
        Definitions
        ===================================================================== */
/* This is the state enumeration. Check the state diagram posted on the web to
figure out which is the meaning of every state */
#define 	Idle		'A'
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
// This is the interrupt service routine
static void interrupt_service_routine(void);


void read_inputs(void);
void write_outputs(void);


/* 	============================================================================
        Global variables	(6 bytes of RAM memory --> char type
============================================================================= */

static char var_Data_in_Trans;
static char var_Serial_out_Trans;
static char var_EoT;
static char var_current_state = Idle; // state variable

static char var_ST_flag; // This flag is going to be set by interrupt 
//when clicking the ST push button
static char var_CLK_flag; // This flag is for timing 
//the transmission at the baud-rate

static char var_LCD_flag; // This flag is for writing only to the LCD 
//display only when new information is available.

/* 	============================================================================
        Main function
        ======================================================================*/
void main_transmiter(void) {
    init_system();
    while (1) { /* loop forever the FSM */
        if (state_logic()) break;
        if (output_logic()) break;
    }
    while (1) {
        __nop(); // The system has crashed in an illegal state and needs 
        //attention. This loop is never reached in normal operation. 
        //The only way to scape it is clicking the CD
    }
}

/* 	============================================================================
        Function definitions
        ===================================================================== */



//*****************************************************************************
//Init operations  
//*****************************************************************************

void init_system(void) {
    // Microcontroller general configuration bits. No need to change them.
    // PIC18F4520 Configuration Bit Settings. They can be generated automatically 
    // in the MPLABX IDE

    // CONFIG1H
#pragma config OSC = XT       // Oscillator Section bits (XT oscillator)
#pragma config FCMEN = OFF     
    // Fail-Safe Clock Monitor E bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       
    // Internal/External Osc Switch-over bit (Oscillator Switch-over mode disabled)

    // CONFIG2L
#pragma config PWRT = ON       // Power-up Timer E bit (PWRT enabled)
#pragma config BOREN = SBORDIS 
    // Brown-out Reset E bits (Brown-out Reset enabled in hardware 
    // only (SBOREN is disabled))
#pragma config BORV = 3    // Brown Out Reset Voltage bits (Minimum setting)

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

    /* -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+*/

    // Initialise starts here:
    // By default, let's declare all the unused pins as digital outputs 
    // The ports:
    PORTA = 0x00; // Reset all Flip-Flops at PORTA
    LATA = 0x00; // Reset all Flip-Flops at PORTA
    ADCON1 = 0x0F; // Configures all the PORTA and PORTB(3..0) lines as digital
    TRISA = 0b00000110; // RA2 is the Data_in(3), RA1 is the Data_in(2)

    PORTB = 0x00;
    LATB = 0x00;
    TRISB = 0b00000011; // PORTB RB1 is the INT1 
    // PORTB RB0 is the INT0 
    PORTC = 0x00;
    LATC = 0x00;
    TRISC = 0b11000000; // PORTC RC5 is Serial_out, PORTC RC2 is EoT
    // RD7 is the Data_in(1), RD6 is the Data_in(0)
    /*   */
    PORTD = 0x00;
    LATD = 0x00;
    TRISD = 0b00000000; // // PORTD is left for the LCD interface
    //
    PORTE = 0x00;
    LATE = 0x00;
    TRISE = 0b00;


    // The INT0
    INTEDG1 = 1; // INT1 edge selection: '1' --> on rising edge 
    //(interrupt after clicking the pushbutton)
    INT1IE = 1; // Enable interrupts from the INT1 pin

    INTEDG0 = 1; // INT0 edge selection: '1' --> on rising edge 
    //(interrupt after CLK edge)
    INT0IE = 0; // Disable interrupts from the INT0 pin (CLK))

    GIE = 1; // Global interrupts allowed

    //Initial situation at "Idle" state:
    var_Serial_out_Trans = 0;
    var_EoT = 0;
    var_CLK_flag = 0;
    var_ST_flag = 0;


    // LCD initialisation 
    lcd_init(FOURBIT_MODE); /* Initialise the LCD module  */
    var_LCD_flag = 1; // Let's the system print the initial message




}

//Future_state_logic routine 
//******************************************************************************

char state_logic(void) {
    char error = 0;

    //if (var_CLK_flag == 1) // Sample the Data_in only when is required 
    read_inputs();

    switch (var_current_state) {
        case Idle:
            if (var_ST_flag == 0) {
                var_current_state = Idle;

            } else if (var_CLK_flag == 1) {
                var_current_state = Start_bit; // on the rising edge 
                var_ST_flag = 0;
                var_CLK_flag = 0;


            } else
                var_current_state = Idle;

            break;

        case Start_bit:
            if (var_CLK_flag == 1) {
                var_current_state = Data_0;
                var_CLK_flag = 0; // Clear the flag when used		
            } else
                var_current_state = Start_bit;
            break;

        case Data_0:
            if (var_CLK_flag == 1) {
                var_current_state = Data_1;
                var_CLK_flag = 0; // Clear the flag when used		
            } else
                var_current_state = Data_0;
            break;

        case Data_1:
            if (var_CLK_flag == 1) {
                var_current_state = Data_2;
                var_CLK_flag = 0; // Clear the flag when used		
            } else
                var_current_state = Data_1;
            break;

        case Data_2:
            if (var_CLK_flag == 1) {
                var_current_state = Data_3;
                var_CLK_flag = 0; // Clear the flag when used		
            } else
                var_current_state = Data_2;
            break;

        case Data_3:
            if (var_CLK_flag == 1) {
                var_current_state = End_T;
                var_CLK_flag = 0; // Clear the flag when used	

                var_LCD_flag = 1; // Clear flag, so that no new rewriting 
            } else
                var_current_state = Data_3;
            break;

        case End_T:
            if (var_CLK_flag == 1) {
                var_current_state = End_Message;
                var_CLK_flag = 0; // Clear the flag when used		


                var_LCD_flag = 1; // Let's print another message 
            } else
                var_current_state = End_T;
            break;

        case End_Message:
            var_current_state = Idle;
            break;

        default:
            error = 1;
    }
    return (error);
}

//Output logic routine 
//******************************************************************************

char output_logic(void) {
    char error = 0;
    switch (var_current_state) {
        case Idle:
            var_Serial_out_Trans = 1; // Marking the serial output line with a '1'
            var_EoT = 0;

            if (var_LCD_flag == 1) {//write only if there is a new info to print
                // Write the output pins once the output variables are set
                lcd_clear();
                lcd_home(); // select line 1
                lcd_puts("IDLE mode ......");
                lcd_home2(); // select line 2 to write a message
                lcd_puts("... push ST ....");
            }
            var_LCD_flag = 0; // Clear flag, so that no new rewriting 


            break;

        case Start_bit:
            var_Serial_out_Trans = 0; // When the serial received detects 
            var_EoT = 0; // this start-bit can start capturing the nibble	

            break;

        case Data_0:
            var_Serial_out_Trans = var_Data_in_Trans & 0b00000001;
            var_EoT = 0;
            break;

        case Data_1:
            var_Serial_out_Trans = (var_Data_in_Trans & 0b00000010) >> 1;
            var_EoT = 0;
            break;

        case Data_2:
            var_Serial_out_Trans = (var_Data_in_Trans & 0b00000100) >> 2;
            var_EoT = 0;
            break;

        case Data_3:
            var_Serial_out_Trans = (var_Data_in_Trans & 0b00001000) >> 3;
            var_EoT = 0;
            break;

        case End_T:
            var_Serial_out_Trans = 1;
            var_EoT = 1; // This state is for generating the EoT flag pulse.

            break;

        case End_Message:
            var_Serial_out_Trans = 1;
            var_EoT = 0;
            // And here, exceptionally, writing is an obligation to assure EoT duration 
            // Check what happens if this function is commented  //write_outputs();
            // Why such "bug" in EoT ? 
            write_outputs(); // Write the output pins

            if (var_LCD_flag == 1) {
                lcd_clear();
                lcd_home(); // select line 1
                lcd_puts(" Transmission...");
                lcd_home2(); // select line 2 to write a message
                lcd_puts("......END.......");
            }
            var_LCD_flag = 1; // to be able to print the Idle message again
            break;

        default:
            error = 1;
    }
    write_outputs(); // Write the output pins once the output variables are set

    return (error);
}

// Interrupt Service Routine to attend the pushbutton and the external CLK
//******************************************************************************

static void interrupt service_routine(void) { //Interrupt is the key word here
    GIE = 0; //Disable interrupts while attending one of them ...

    if (INT0IF == 1) {
        var_CLK_flag = 1; //Set the variable to transmit a bit every CLK period
        INT0IF = 0;
    }

    if (INT1IF == 1) {
        var_ST_flag = 1; //Set the variable to move the state diagram and clear 
        // the hardware interrupt flag bit (so that the system can be 
        // interrupted again when another active edge is detected)
        // Initialise the CLK source
        INT0IF = 0;
        INT0IE = 1;
        var_CLK_flag = 0;
        // Clear the hardware flag
        INT1IF = 0;
    }
    GIE = 1; //Enable interrupts
}

/* =============================================================================
 Scan inputs and process the bits so that we can set our convenient variables. 
 Many of the variables are "char" because we can easily monitor them using
 the watch window for debugging purposes.
  =========================================================================== */
void read_inputs(void) {
    char var_buf1, var_buf2;
    // Let's read all the port bits and then prepare the variables 
    // Like in P9, read the port, mask the bit of interest and set the variable 
    var_buf1 = (PORTA & 0b00000110);
    var_buf1 = var_buf1 << 1; // This is Data_in(3) and Data_in(2) 

    var_buf2 = (PORTC & 0b11000000);
    var_buf2 = var_buf2 >> 6; // This is Data_in(1) and Data_in(0) 

    var_Data_in = var_buf2 | var_buf1;

}

/* =============================================================================
    Driving the output pins. Let's drive the output ports, converting 
    microcontroller variables into electrical signals.    
   ========================================================================== */
void write_outputs(void) {
    char var_buf1, var_buf2, var_buf3; //Local variable buffer

    // Firstly, let's read the port so save the bits of NO interest while clearing 
    // the bits to write, and then move the variables to the pin positions, 
    // and write

    var_buf1 = PORTC & 0b11011011;
    var_buf2 = var_EoT << 2;
    var_buf3 = var_Serial_out_Trans << 5;
    var_buf3 = var_buf3 | var_buf2; // The two variables in place 
    PORTC = var_buf3 | var_buf1; // write the port in a single instruction 
    // Or instead: 
    //PORTC = (PORTC & 0b11011011) | (var_EoT << 2) | (var_Serial_out << 5); 

}

