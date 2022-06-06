/* =============================================================================
 UPC - EETAC - CSD - http://digsys.upc.edu 
  
An example on how to implement a sequential system like an 1-digit BCD counter 
using "current_state" state-type variable. 
Thus, this example can be used to adapt other FSM containing a small number 
of states. 

 * Print in color this file, and analyse it and use it as 'theory' class notes. 
============================================================================= */

// This general header file includes the device specific headers like
// "pic18f4520.h". This file contains all the microcontroller declarations.
#include <xc.h>     

/* 	============================================================================
	Definitions 
   	========================================================================= */

// Our counter has 10 states defined as follows:
#define 	Num_0 			'A'	//States enumeration. "Char"
#define 	Num_1 			'B'
#define 	Num_2 			'C'
#define 	Num_3 			'D'
#define 	Num_4 			'E'
#define 	Num_5 			'F'
#define 	Num_6 			'G'
#define 	Num_7 			'H'
#define 	Num_8 			'I'
#define 	Num_9 			'J'

/* 	============================================================================
	Function prototypes
   	========================================================================= */
// The three basic functions to organise the code to emulate a FSM
void init_system (void);         
char state_logic(void);
char output_logic(void);    

//The interrupt service routine (ISR) to detect the Var_CLK_Flag (external INT0)
// or the ST_SP signal (RB interrupt, or the TMR0 interrupt
static void interrupt ISR(void); 

// The auxiliary functions to read/poll and write port pins and be able to
// organise the software variables, to make the main program hardware
// independent and compatible for many microcontrollers. 
void write_outputs (void);
void read_inputs(void);  

/* 	============================================================================
	Global variables  
  	========================================================================= */
// Even if some variables are 'bit' type, we use 'char' (byte) to make them easy 
// to watch while debugging.
static char Var_CE;
static char Var_TC10;
static char Var_BCD_code; 

// This is a convenient variable to save partial results 
static char Var_data;

//The flag that will be set from the interrupt service routine to indicate that 
// a new CLK_Flag has arrived
static char Var_CLK_Flag;	

// The state variable which will be updated ("asynchronously") every time that 
// "state_logic()" is executed. 
// This is the FSM memory equivalent to the state register in Chapter 2  
static char current_state = Num_0;	


/* 	============================================================================
	Main function 
  	========================================================================= */
void main(void){
    init_system ();
    while(1) {                      /* loop forever the FSM */
		if (state_logic()) break;
		if (output_logic()) break;
    }
    while (1){
        __nop();//The system has crashed in an illegal state and needs attention
                //This second infinite loop is never reached in normal operation
    }           // The only way to scape is clicking reset (CD)
}	

/* 	============================================================================
	Function definitions
  	========================================================================= */

//*****************************************************************************
//State variable logic routine  (The CC1)
//*****************************************************************************
char state_logic(void){
	char error = 0;	

    read_inputs(); //sample input values so that the CC1 can decide transitions
    
	if (Var_CLK_Flag == 1){

    	switch (current_state) {
            case Num_0:				
                if (Var_CE == 1){
                    current_state = Num_1;                         
                }
                else{
                    current_state = Num_0;  
                }                    
            break;

            case Num_1:				
                if (Var_CE == 1) current_state = Num_2;                         
                else current_state = Num_1;                    
            break;
            
            case Num_2:		//else is not required. Check if you see 
                            // differences in the disassembly listing 
                if (Var_CE == 1) 
                    current_state = Num_3;                         
            break;

            case Num_3:				
                if (Var_CE == 1) 
                    current_state = Num_4;    
            break;
            case Num_4:				
                if (Var_CE == 1) 
                    current_state = Num_5;    
            break;
            case Num_5:				
                if (Var_CE == 1) 
                    current_state = Num_6;    
            break;
            case Num_6:				
                if (Var_CE == 1) 
                    current_state = Num_7;    
            break;
            case Num_7:				
                if (Var_CE == 1) 
                    current_state = Num_8;    
            break;
            case Num_8:				
                if (Var_CE == 1) 
                    current_state = Num_9;    
            break;
            case Num_9:				
                if (Var_CE == 1) 
                    current_state = Num_0;    
            break;

            default:
            // If no states have been selected, there is an error
            // and the systems must be stopped                     
                error = 1;	
                break;
        }
		Var_CLK_Flag = 0;	// Clear the Var_CLK_Flag detection flag
	}
	return (error);
}

//*****************************************************************************
//Output logic routine (The combinational circuit CC2)
//*****************************************************************************
char output_logic(void){
unsigned char error = 0;	 
	switch (current_state) {	
		case Num_0:
            Var_BCD_code = 0;
			break;
		case Num_1:
            Var_BCD_code = 1;
			break;
		case Num_2:
            Var_BCD_code = 2;
			break;
		case Num_3:
            Var_BCD_code = 3;
			break;
		case Num_4:
            Var_BCD_code = 4;
			break;
		case Num_5:
            Var_BCD_code = 5;
			break;
		case Num_6:
            Var_BCD_code = 6;
			break;
		case Num_7:
            Var_BCD_code = 7;
			break;
		case Num_8:
            Var_BCD_code = 8;
			break;
		case Num_9:
            Var_BCD_code = 9;
			break;
		default:
			error = 1;	// If no states have been selected, there is an error
						// and the systems must be stopped 
			break;
	}
// Notice that '&' is a bitwise AND operation, however '&&' is a logic AND: 
	if (current_state == Num_9 && Var_CE == 1)
		Var_TC10 = 1;
	else
		Var_TC10 = 0;

    write_outputs(); // The interface with the hardware to convert variables 
					 // into voltages at a given microcontroller pin. 
    
	return (error);

}

//***************************************************************************
//Interrupt Service Routine 
//***************************************************************************

static void interrupt ISR (void){	//"interrupt" is the key word here
	GIE = 0; 		//Disable interrupts while attending one of them ...
	if(INT0IF == 1) {		// Is it an INT0 interrupt ?
			
// If the code execution reach this point is because a falling edge signal 
// in RB0 has been detected, so let's set the flag and the FSM will 
// acknowledge it
        Var_CLK_Flag = 1;	//Set the "software flag"	  
		INT0IF = 0;	// clear the "hardware" INT0 interrupt flag
	}
	GIE = 1; 		//Enable interrupts 
}


/* =============================================================================
 Scan inputs and process the bits so that we can set our convenient variables 
 many of the variables are "char" because we can easily monitor them using
 the watch window for debugging purposes.
  =========================================================================== */
void read_inputs (void){     

// Like in P9, read the port, mask the bit of interest and set the variable 
    Var_CE = (PORTB & 0b00000010)>>1;
    
}

/* =============================================================================
	Driving the output pins. Let's drive the output ports, converting 
	microcontroller variables into electrical signals.    
   ========================================================================== */
void write_outputs(void){
	
    //To write a given output pin:
    // Read and mask to preserve all the bits not to be written
    Var_data = PORTB & 0b11111011; 
    // Shift the bit of interest to the pin position, compose the port bits (OR)
    // and write the port
    PORTB = Var_data | (Var_TC10 << 2);

    //The same procedure to write the Q(3..0) to the assigned PORTD pins (7..4)
    Var_data = PORTD & 0b00001111; 
    PORTD = Var_data | (Var_BCD_code << 4);
 
}


//*****************************************************************************
// Initialise the microcontroller system  
//*****************************************************************************
void init_system (void){
// Configuration bits

// These are the configuration bits translated to the XC8 Compiler
// Microcontroller general configuration bits. You don't have to change them.
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

/* All the PORTA, PORTB and PORTE is set to be digital I/O (The can be 
     * defined as analogue inputs*/
    ADCON1 	= 0x0F;	// read the datasheet chapter on the A/D converter
// All unused pins are defined as outputs and reset
   
	PORTB 	= 0x00;         // Reset all Flip-Flops at PORTB                
	LATB 	= 0x00;         
	TRISB 	= 0b00000011; 	// PORTB1 and PORTB0 are inputs; PORTB2 is output  
    
	PORTD 	= 0x00;         // Reset all Flip-Flops at PORTD
	LATD 	= 0x00;
	TRISD 	= 0b00000000;	// PORTD(7..4) are outputs for the code
                            // the other bits are also defined as outputs    
    
// INT0 edge selection: '0' --> on falling edge 
// (interrupt after clicking the pushbutton)
	INTEDG0	= 0; 
	INT0IE 	= 1; // Enable INT0 interrupts  
	
	IPEN = 0; 	// Interrupt priority disabled
	PEIE = 0;   // Disable all the other sources of interrupt
	GIE = 1;		// Global interrupts allowed 
	
    Var_CLK_Flag = 0;	// Reset the flag to detect an interrupt INT
}

