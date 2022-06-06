/* =============================================================================
 UPC - EETAC - CSD - http://digsys.upc.edu
 P10: An example on how organise a project as a FSM

 * A 18.5 s timer with two modes of operation: retriggerable (See for example 
 * the classic chip 74LS122/123) and non-retriggerable (see Chip 74LS121)
Features:
 * Programming in FSM style a target chip PIC18F4520. 
 * C language, coding in FSM style, a dedicated processor approach, which means
 * that the datapath is used for counting (a RAM variable).
 * External CLK to increment the counter.
 * Trigger button is interrupt-driven RB0/INT0 to detect the falling edge
 * Retriggerable signal (RT) by reading/polling the switch at RA4 
 * 
 *  * Hardware for prototyping: PICDEM2+ board

Approach/plan: 
- Step 1: Study the notes available on the web about the design of a Timer using 
VHDL and FPGA/CPLD devices.
 
- Step 2: Prepare the hardware, so that adapt the PICDEM2+ board to this 
particular application. For instance:
    - Timer_Out may be a LED, for example the one connected at RB3
    - Retriggerable signal (RT), the switch at RA4
    - The Trigger signal is RB0/INT0
    - The external CLK is RB1/INT1
    		
- Step 3: Program init_system()function configuring ports and interrupts 

---> For instance, in order to generate a timing period of 18.5 s ===> 
External FCLK = 50 Hz; variable var_TC_N1 = 925  (int type)
   
 Timing period (Tp) = 20 ms · N1 = 18.5 s
            N1 = 925       
                  
This is an INT1 interrupt flag INT1IF every 20 ms, which is going to be used to
increment the var_Counter_mod65536 variable until the terminal count
var_Counter_mod65536_N1.
              
NOTE:The C code exemplified here is not optimised in any sense. The CSD style of 
programming aims clarity and facilitating the comprehension of the basic ideas 
on microcontrollers taking advantage of the previous content on combinational
and sequential systems in CSD. 
============================================================================= */
#include <xc.h>	// This file also includes the "pic18f4520.h" which contains 
                //all the microcontroller declarations

/* 	============================================================================
        Definitions
        ===================================================================== */

/* This is the state enumeration. Check the state diagram posted on the web to
figure out which is the meaning of every state */
#define 	Idle            'A'
#define 	Setup_Counter   'B'
#define 	Timing          'C'
#define 	Stop_Counter    'D'

/* 	============================================================================
        Function prototypes
    ========================================================================= */
void init_system(void);
char output_logic(void);
char state_logic(void);

void datapath(void); 

void read_inputs(void); 
void write_outputs(void);

// This is the interrupt service routine
static void interrupt ISR(void); 

/* 	============================================================================
        Global variables
============================================================================= */

static char var_RT;             // Inputs 

static char var_Timer_out;      // Outputs
static char var_Timer_out_pre;  //previous value

static char current_state = Idle; 	// state variable

static char var_CLK_flag;       // To allow the datapath count
static char var_Trigger_flag;   // This flag is going to be set by interrupt 
								//when clicking the trigger push button
static char var_Timer_flag;   // This flag is to be set when the Tp has elapsed

//The datapath variable to implement a counter. 
// an 'int' variable is 16-bit wide and can save up to 65536 different values
static unsigned int var_Counter_mod65536; 
static unsigned int var_TC_N1; /* You may try other values,
                            for instance 200, which give you 4 s*/

/* 	============================================================================
        Main function
        ======================================================================*/
void main(void){
    init_system ();
    while(1) {                      /* loop forever the FSM */
        if (state_logic()) break;
        if (output_logic()) break;
        datapath (); // The operation resources: a RAM based counter driven by INT1
        write_outputs();// Write the output pins once the output variables are set
    }
    while (1){
        __nop();// The system has crashed in an illegal state and needs 
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
// in the MPLAB X IDE

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

    /* -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+*/
	
// Initialise starts here:
    // By default, let's declare all the unused pins as digital outputs 
// The ports:
    PORTA = 0x00;   // Reset all Flip-Flops at PORTA
    LATA = 0x00;    
    ADCON1 = 0x0F;  // Configures all the PORTA and PORTB(3..0) lines as digital
    TRISA = 0b00010000; // RA4 is the RT input
    
    PORTB = 0x00; // Reset all Flip-Flops at PORTB
    LATB = 0x00; 
    TRISB = 0b00000011; // PORTB RB3 is the Timer_Out
                        // PORTB RB0 is the INT0 trigger input
                        // PORTB RB1 is the INT1 CLK input (time base))
    PORTC = 0x00;       // Not used
    LATC = 0x00; 
    TRISC = 0b00000000; 

    PORTD = 0x00;       // Not used
    LATD = 0x00; 
    TRISD = 0x00; 
  
    PORTE = 0x00;       // Not used
    LATE = 0x00; 
    TRISE = 0b00000000; 
    
// The INT0
    INTEDG0 = 0;    // INT0 edge selection: '0' --> on falling edge 
                    //(interrupt after clicking trigger pushbutton)
    INT0IE = 1;     // Enable interrupts from the INT0 pin

// The INT1 
    INTEDG1 = 1;    // INT1 edge selection: '1' --> on rising edge 
    INT1IE = 0;     // Now, disabled
    
    GIE = 1;        // Global interrupts allowed

    //Initial situation at "Idle" state:
    var_Timer_out = 0;
    var_Trigger_flag = 0;
    var_Timer_flag = 0;

}

//Future_state_logic routine 
//******************************************************************************
char state_logic(void) {
    char error = 0;
    read_inputs (); // Sample the variables that are going to decide where to go 

    switch (current_state) {
        case Idle:
            if (var_Trigger_flag == 1) { // if a button pressed is detected,
                current_state = Setup_Counter;
                var_Trigger_flag = 0;    //Clear variable, 

								//so that it can be interrupted again
            } else
                current_state = Idle;
            break;

        case Setup_Counter:
            current_state = Timing;
            break;


        case Timing:
            if (var_Timer_flag == 1) {// End of the timing period
                current_state = Stop_Counter;
                var_Timer_flag = 0; //Clear the flag
            }

            else if (var_Trigger_flag == 1 && var_RT == 1) { //retrigger timer
                current_state = Setup_Counter;
                var_Trigger_flag = 0;
            }
            else
                current_state = Timing;
            break;

        case Stop_Counter:
            current_state = Idle;
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
    char var_buf;
    switch (current_state) {
        case Idle:
            var_Timer_out = 0;
            break;

        case Setup_Counter:
            var_Timer_out = 1;
            var_TC_N1 = 924; 		// Terminal count 
            var_Counter_mod65536 = 0;      // Init counter

            INT1IE = 1; 	// Enable INT1 interrupts from the external CLK
            var_Timer_flag = 0;
            
            break;

        case Timing:
            var_Timer_out = 1;

            break;

        case Stop_Counter:
            var_Timer_out = 0; // Ends the timing period
            var_Counter_mod65536 = 0;
            INT1IE = 0; // Disable INT1 interrupts
            var_Timer_flag = 0;
            break;

        default:
            error = 1;
    }
    return (error);
}

// Interrupt Service Routine to attend the pushbuttons and the TB
//******************************************************************************
static void interrupt ISR(void) { //Interrupt is the key word here
    GIE = 0; //Disable interrupts while attending one of them ...
    if (INT1IF == 1) {
        var_CLK_flag = 1; // Allows counting in the datapath
       // Clear the interrupt flag, so that it will be interrupted again in 20ms
        INT1IF = 0;   
    }
    if (INT0IF == 1) {
        var_Trigger_flag = 1; //Set the variable to move the state diagram 
        // and clear the hardware interrupt flag bit (so that the system can be 
        // interrupted again when another active edge is detected)
        INT0IF = 0;
    }
    GIE = 1; 	//Enable interrupts
}

/* =============================================================================
 Counter variable considered as the operational datapath to perform 
 operations
  =========================================================================== */
void datapath (void){     
    if (var_CLK_flag == 1){
        if (var_Counter_mod65536 < var_TC_N1) {
            var_Counter_mod65536++;
        } else {
            // Status signal from the datapath (terminal count))
            var_Timer_flag = 1; // Set the state diagram variable
            var_Counter_mod65536 = 0; 
        } //(It means that 18.5 s has elapsed (in non retriggerable mode)
    
    var_CLK_flag =0;
    }
}


/* =============================================================================
 Scan inputs and process the bits so that we can set our convenient variables. 
 Many of the variables are "char" because we can easily monitor them using
 the watch window for debugging purposes.
  =========================================================================== */
void read_inputs (void){     
// Like in P9, read the port, mask the bit of interest and set the variable 
    var_RT = (PORTA & 0b00010000)>>4;
   
}

/* =============================================================================
	Driving the output pins. Let's drive the output ports, converting 
	microcontroller variables into electrical signals.    
   ========================================================================== */
void write_outputs(void){
	char var_buf; //Local variable buffer
    
    // Pin RB3 at the PICDEM2+ will be the LED to indicate when the timer is ON
    
    //To write a given output pin:
    // Read and mask to preserve all the bits not to be written
        var_buf = PORTB & 0b11110111;         
    // Shift the bit of interest to the pin position, compose the port bits OR
    // and write the port
        PORTB = var_buf | (var_Timer_out << 3);
        var_Timer_out_pre = var_Timer_out; 
        // to save the value for the next iteration
}

