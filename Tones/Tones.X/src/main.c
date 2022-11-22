/*
 * File:   main.c
 * Author: Embedded Laboratory
 *
 * Created on June 4, 2017, 10:24 PM
 */
#include "config.h"
#include "lcd_16x2.h"
#include "keypad.h"
#include "pwm.h"

/* Project */
Task_s lcdTask        = { TRUE,   1000u,   0u };
Task_s keyTask        = { TRUE,   30u,     0u };

/* Global Variables for this file*/
static char lcd_msg[LCD_BUFFER_LEN] = { 0 };
static u8_t keyPress = 0;
#define SAREGAMAPA_SIZE     7u
u16_t saregamapa[SAREGAMAPA_SIZE] = \
                          {2441u, 2741u, 3048u, 3255u, 4058u, 4562u, 4882u};
char tone_display[][SAREGAMAPA_SIZE] = 
{
  "SA",
  "RE",
  "GA",
  "MA",
  "PAA",
  "DHA",
  "NII",
  "SAA"
};
/* Function Prototypes*/
void Initialize_IO( void );

/* Main Program*/
void main()
{
  u8_t duty_cycle = 50u;
  static u8_t index = 0u;
  boolean start = FALSE;
  Initialize_IO ();
  
  LCD_Print_Line (0, (char*)"Embedded");
  LCD_Print_Line (1, (char*)"      Laboratory");
  LCD_Update ();
  
  while(1)
  {
    // Get Key Task
    // if( millis() - keyTask.timestamp > keyTask.period )
    {
      keyPress = getKey ();
      if (keyPress!=NO_KEY && keyPress < MAX_KEY_SIZE )
      {
        keyPress = KeyMap[keyPress-1];
      }
    }
    
    // LCD Update Task
    if( (millis() - lcdTask.timestamp > lcdTask.period)
         || (keyPress == START_KEY || keyPress == STOP_KEY) )
    {
      lcdTask.timestamp = millis();
      if ( keyPress ==  START_KEY )
      {
        start = TRUE;
      }
      
      else if( keyPress == STOP_KEY )
      {
        LCD_Print_Line (0, (char*)"TONE STOPPED");
        LCD_Print_Line (1, lcd_msg);
        PWM1_Stop ();
        start = FALSE;
        index = 0u;
      }
      
      /* Play Tone*/
      if ( start == TRUE )
      {
        LCD_Print_Line (0, (char*)"PLAYING TONE:");
        LCD_Print_Line (1, tone_display[index]);
        PWM1_Stop ();
        PWM1_Init ((u32_t)saregamapa[index]);
        PWM1_Set_Duty (duty_cycle);
        PWM1_Start ();
        /* Force Update*/
        LCD_Update ();
        if ( index < SAREGAMAPA_SIZE )
          index++;
        else
          index = 0u;
      }
      LCD_Update ();
    }
  }
}

void Initialize_IO( void )
{
  // Select 16MHz Internal Oscillator
  OSCCONbits.IRCF = 0x07;             // From 1MHz to 16MHz
  
  Initialize_Keypad ();
  InitTimer0 ();
  LCD_Init ();
}


