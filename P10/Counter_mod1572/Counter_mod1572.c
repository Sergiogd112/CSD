/* =============================================================================
 UPC - EETAC - CSD - http://digsys.upc.edu
  
P10: An example on how to implement a sequential system like a counter mod1572 
using arithmetics to solve the next-state logic. 
Thus, this is the adaptation of the plan Y in P7: a FSM with a large number 
of states that cannot be enumerated.   
 
The counter's modulo can be truncated to any value using the constant Max_Count

* Print in colours this file, and analyse it and use it as 'theory' class notes. 
============================================================================= */

// This general header file includes the device specific headers like
// "pic18f4520.h". This file contains all the microcontroller declarations.
#include <xc.h>     

/* 	============================================================================
	Definitions 
   	========================================================================= */

#define 	Max_Count 	0x0623	// (1571) It can be adapted to any value
#define 	Reset_Count 0x0000	// the initital count value 

/* 	============================================================================
	Function prototypes
   	========================================================================= */
// The two basic functions to organise the code to emulate a FSM
char state_logic(void);
char output_logic(void);    

//The interrupt service routine (ISR) to detect the var_CLK_flag (external INT0)
static void interrupt ISR(void); 

// The auxiliary functions to be able to organise the software RAM variables.
// In this way the software program (state & output logic) is independent and 
// compatible to many microcontrollers. 
void write_outputs (void);
void read_inputs(void);  
void init_system (void);  

/* 	============================================================================
	Global variables  
  	========================================================================= */
// Even if some variables are 'bit' type, we use 'char' (byte) to make them easy 
// to watch while debugging.
static char var_CE;
static char var_TC1572;
static int var_Q; 

//The flag that will be set from the interrupt service routine to indicate that 
// a new falling edge from the external CLK is detected. 
static char var_CLK_flag;	

// The state variable which will be updated ("asynchronously") every time that 
// "state_logic()" is executed. This variable is equivalent to the FSM 
// state register based on D_FF
static int current_state = Reset_Count;	


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

/* All the PORTA, PORTB and PORTE are set to be digital I/O (they can be 
defined as analogue inputs to be used with the A/D, but not here */
    ADCON1 	= 0x0F;	// read the datasheet chapter on the A/D converter
// All unused pins are defined as outputs and reset
    PORTA 	= 0x00;         // Reset all Flip-Flops at PORT1               
	LATA 	= 0x00;         
	TRISA 	= 0b00001000; 	// PORTA3 is CE_L, an input
   
	PORTB 	= 0x00;         // Reset all Flip-Flops at PORTB                
	LATB 	= 0x00;         
	TRISB 	= 0b00000001; 	// PORTB0 is the input INT0 (external interrupt)  
                            // PORTB(7..5) are outputs for the code
    
	PORTC 	= 0x00;         // Reset all Flip-Flops at PORTC
	LATC 	= 0x00;
	TRISC 	= 0b00000000;	// PORTC(7..4) are outputs for the code
    
	PORTD 	= 0x00;         // Reset all Flip-Flops at PORTD
	LATD 	= 0x00;
	TRISD 	= 0b00000000;	// PORTD(7..4) are outputs for the code
 
    PORTE 	= 0x00;         // Reset all Flip-Flops at PORTE
	LATE 	= 0x00;
	TRISE 	= 0b00000000;	
    
// INT0 edge selection: '0' --> on falling edge 
// (interrupt after clicking the pushbutton)
	INTEDG0	= 0; 
	INT0IE 	= 1; // Enable INT0 interrupts  
	
	IPEN = 0; 	// Interrupt priority disabled
	PEIE = 0;   // Disable all the other sources of interrupt
	GIE = 1;	// Global interrupts allowed 
	
    var_CLK_flag = 0;	// Reset the flag to detect an interrupt INT
}



//*****************************************************************************
//State variable logic routine  (The CC1)
//*****************************************************************************
char state_logic(void){
	char error = 0;	

    read_inputs(); // sample/poll/acquire new input values 
    
	if (var_CLK_flag == 1){	// the condition which makes the system sensitive   
        if (var_CE == 1){
            if (current_state == Max_Count){
                current_state = Reset_Count;
            }
            else { 
                current_state ++;	// a simple adder to count UP
            }
        }
        var_CLK_flag = 0;	// Clear the var_CLK_flag detection flag
	}
	return (error);
}

//*****************************************************************************
//Output logic routine (The combinational circuit CC2)
//*****************************************************************************
char output_logic(void){
unsigned char error = 0;	 

// In this plan Y, the counter output is simply a copy of the present state
	var_Q = current_state; 
	
	
// Notice that '&' is a bitwise AND operation, however '&&' is a logic AND: 
	if (current_state == Max_Count && var_CE == 1)
		var_TC1572 = 1;
	else
		var_TC1572 = 0;

    write_outputs(); // The interface with the hardware
    
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
        var_CLK_flag = 1;	//Set the "software flag"	  
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
// This is a convenient local variable to save partial results 
char var_buf;
// Like in P9, read the port, NOT, mask the bit of interest and set the variable 
    var_buf = (PORTA ^0b11111111) & 0b00001000; 
    var_CE = var_buf >> 3;

}

/* =============================================================================
	Driving the output pins. Let's drive the output ports, converting 
	microcontroller variables into electrical signals.    
   ========================================================================== */
void write_outputs(void){
// This is a convenient local variable to save partial results 
char var_buf;	
int var_buf2;
    //To write a given output pin:
    // Read and mask to preserve all the bits not to be written
    var_buf = PORTB & 0b11111011; 
    // Shift the bit of interest to the pin position, compose the port bits (OR)
    // and write the port
    PORTB = var_buf | (var_TC1572 << 2);

// Read and mask to preserve the bits of no interest while clearing 
// the bit to be written. 
    var_buf = PORTB & 0b00011111; 
    var_buf2 = var_Q & 0b0000011100000000; // Consider only the bits to write
    PORTB = var_buf | (var_buf2 >> 3);
    
    var_buf = PORTD & 0b00001111; 
    var_buf2 = var_Q & 0b0000000011110000; 
    PORTD = var_buf | var_buf2 ;
      
    var_buf = PORTC & 0b00001111; 
    var_buf2 = var_Q & 0b0000000000001111; 
    PORTC = var_buf | (var_buf2 << 4);
 
}
