/**
 * @file lcd_16x2.c
 * @author Embedded Laboratory
 * @date May 12, 2016
 * @brief LCD Initialization and Functions Definitions.
 */

#include "lcd_16x2.h"

static uint8_t lcd_initialized = FALSE;   /**< LCD Initializatin Status.*/
static 
char lcdCharLines[LCD_ROWS][LCD_BUFFER_LEN];   /**< LCD display message.*/

/* Private Function Prototype*/
#ifdef USE_LCD_BUSY_FLAG
static void lcd_busy( void );
#else
static void lcd_delay_ms( uint32_t ms );
#endif
  
/**
 * @brief Initialize 16x2 LCD Module.
 *
 * Initialize 16x2 LCD Module in 8-bit mode.
 * 
 */
void LCD_Init(void)
{
#ifndef USE_LCD_BUSY_FLAG
  lcd_initialized = TRUE;     // Set to True if using delay mode
#endif
#ifdef LCD_MODE_4BIT
  // Set the LCD Pins as Output Pins
  LCD_DATA_DIR &= 0x0F;
  // Set LCD Control Pins as Output Pins
  LCD_RS_DIR = 0;             // RS
  LCD_RW_DIR = 0;             // RW
  LCD_EN_DIR = 0;             // EN
  
  // Set Back-Lit Pin as Output (If Present)
  
  // Clear Values
  ANSELD &= ~(0x80);
  LCD_DATA &= 0x0F;
  LCD_RS = 0;
  LCD_RW = 0;
  LCD_EN = 0;
  
  // Clear Back-Lit 
  
#ifdef USE_LCD_BUSY_FLAG
  lcd_busy();
#else
  __delay_ms(10);
  __delay_ms(10);
#endif  
  LCD_Cmd(LCD_16x1_INIT);
#ifndef USE_LCD_BUSY_FLAG
  __delay_ms(10);
#endif
  LCD_Cmd(LCD_16x1_INIT);
#ifndef USE_LCD_BUSY_FLAG
  __delay_ms(10);
#endif
  LCD_Cmd(LCD_16x1_INIT);
#ifndef USE_LCD_BUSY_FLAG
  __delay_ms(10);
#endif
  LCD_Cmd(LCD_16x1_INIT_4BIT);
#ifndef USE_LCD_BUSY_FLAG
  __delay_ms(10);
#endif
  LCD_Cmd(LCD_16x2_INIT_4BIT);
#else
  // Set LCD Pins as Output Pins
  LCD_DATA_DIR = 0x00;
  
  // Set LCD Control Pins as Output Pins
  LCD_RS_DIR = 0;             // RS
  LCD_RW_DIR = 0;             // RW
  LCD_EN_DIR = 0;             // EN
  
  // Set Back-Lit Pin as Output (If Present)
  
  // Clear Values
  ANSELD &= ~(0x80);
  LCD_DATA = 0x00;
  LCD_RS = 0;
  LCD_RW = 0;
  LCD_EN = 0;
  
  // Clear Back-Lit 
  
#ifdef USE_LCD_BUSY_FLAG
  lcd_busy();
#else
  lcd_delay_ms(2);
#endif
  LCD_Cmd(LCD_16x2_INIT);
#endif
  LCD_Cmd(LCD_DISP_ON_CUR_ON);
  LCD_Cmd(LCD_DISP_ON_CUR_OFF);
  LCD_Cmd(LCD_CLEAR);
  LCD_Cmd(LCD_ENTRY_MODE);
  LCD_Cmd(LCD_FIRST_ROW);  
}

/**
 * @brief Send Command to LCD.
 *
 * Send Command to LCD, use the following commands.
 * <b>LCD_16x2_INIT,LCD_DISP_ON_CUR_ON,LCD_DISP_ON_CUR_OFF,LCD_DISP_ON_CUR_BLNK,
 * LCD_FIRST_ROW,LCD_SECOND_ROW,LCD_CLEAR</b>.
 * @param command Command to Send to the LCD.
 */
void LCD_Cmd(uint8_t command)
{
#ifdef LCD_MODE_4BIT
  LCD_DATA &= 0x0F; // Clear Data
  LCD_DATA |= (command & 0xF0);
  LCD_RS = 0;
  LCD_RW = 0;
  LCD_EN = 1;
  Nop();
  Nop();
  LCD_EN = 0;
  
  Nop();
  
  LCD_DATA &= 0x0F; // Clear Data
  LCD_DATA |= ((command<<4) & 0xF0);
  LCD_EN = 1;
  Nop();
  Nop();
  LCD_EN = 0;
#ifdef USE_LCD_BUSY_FLAG
  lcd_busy();
#else
  lcd_delay_ms(2);
#endif
#else
  LCD_DATA = command;
  LCD_RS = 0;
  LCD_RW = 0;
  LCD_EN = 1;
  Nop();
  Nop();
  LCD_EN = 0;
#ifdef USE_LCD_BUSY_FLAG
  lcd_busy();
#else
  lcd_delay_ms(2);
#endif
#endif
}

/**
 * @brief Write Data on LCD.
 *
 * Write Data on LCD, specified as arguments.
 * @param Data Data to Write on LCD.
 */
void LCD_Write(uint8_t Data)
{ 
  if( !lcd_initialized )
  {
    LCD_Init();   // Re-Initialize LCD
  }
  
  if( lcd_initialized )
  {
#ifdef LCD_MODE_4BIT
    LCD_DATA &= 0x0F; // Clear Data
    LCD_DATA |= (Data & 0xF0);
    LCD_RS = 1;
    LCD_RW = 0;
    LCD_EN = 1;
    Nop();
    Nop();
    LCD_EN = 0;
    
    Nop();
    
    LCD_DATA &= 0x0F; // Clear Data
    LCD_DATA |= ((Data<<4) & 0xF0);
    LCD_EN = 1;
    Nop();
    Nop();
    LCD_EN = 0;
#ifdef USE_LCD_BUSY_FLAG
    lcd_busy();
#else
    lcd_delay_ms(2);
#endif
#else
    LCD_DATA = 0x00;
    LCD_DATA = Data;
    LCD_RS = 1;
    LCD_RW = 0;
    LCD_EN = 1;
    Nop();
    Nop();
    LCD_EN = 0;
#ifdef USE_LCD_BUSY_FLAG
    lcd_busy();
#else
    lcd_delay_ms(2);
#endif
#endif
  }
}

/**
 * @brief Blink LCD Cursor
 *
 * Blinks the LCD Cursor
 */
void LCD_Cursor_Blink(void)
{
  LCD_Cmd (LCD_DISP_ON_CUR_BLNK);
}

/**
 * @brief Stops Cursor Blinking
 *
 * Stops the cursor Blinking from the LCD.
 */
void LCD_Cursor_NoBlink(void)
{
  LCD_Cmd (LCD_DISP_ON_CUR_OFF);
}

/**
 * @brief Set Cursor
 *
 * Set Cursor to a Particular position on the LCD.
 * @param row Row Number
 * @param col Column Number
 */
void LCD_Set_Cursor(u8_t row, u8_t col)
{
  if( row == 0u )
    LCD_Cmd (LCD_FIRST_ROW | col);
  else if( row == 1u )
    LCD_Cmd (LCD_SECOND_ROW | col);
}

/**
 * @brief Write String on LCD.
 *
 * Write String on LCD, specified as arguments.
 * @param *msg First Character Address of the String.
 * @note String Must be terminated by NULL Character.
 */
void LCD_Write_Text(char *msg)
{
  while(*msg)
  {
    LCD_Write(*msg);
    msg++;
  }
}

/**
 * @brief Turn On Back Light.
 *
 * Turn's On the Back Light of LCD.
 * @note Power Consumption will be increased.
 */
void LCD_BackLight_On( void )
{
  // Turn On Back Lit
}

/**
 * @brief Turn Off Back Light.
 *
 * Turn's Off the Back Light of LCD.
 */
void LCD_BackLight_Off( void )
{
  // Turn Off Back Lit
}

/**
 * @brief Update LCD Display Buffer.
 *
 * This function will update the LCD display buffer.
 * @param lcd_line Row Number, in which data has to be written.
 * @param *p_lcd_msg Message which needs to be updated in Lcd Buffer.
 * @return TRUE if successfull otherwise FALSE.
 * @note Power Consumption will be increased.
 */
uint8_t LCD_Print_Line(uint8_t lcd_line, char *p_lcd_msg)
{
  uint8_t updated = TRUE;
  if( strlen(p_lcd_msg) > LCD_BUFFER_LEN )
  {
    updated = FALSE;
  }
  
  if( updated )
  {
    /* 
    right-pad the message with spaces to erase any unwritten characters on the 
    display
    */
    // Padding Width must be changed if LCD_COLs
    int8_t n = sprintf(lcdCharLines[lcd_line],"%-16s", p_lcd_msg);
    if( n < 0 )
      updated = FALSE;
  }
  return updated;     
}

/**
 * @brief Update LCD.
 *
 * Update the LCD with the data from LCD Buffer.
 */
void LCD_Update( void )
{
  for (uint8_t i = 0; i < LCD_ROWS; i++)
  {
    switch(i)
    {
    case 0:
      LCD_Cmd(LCD_FIRST_ROW);
      break;
    case 1:
      LCD_Cmd(LCD_SECOND_ROW);
      break;
    }
    LCD_Write_Text(lcdCharLines[i]);
  }
}

#ifdef USE_LCD_BUSY_FLAG
/**
 * @brief Lcd Busy.
 *
 * Wait for LCD Controller to get Ready.
 * @note Timeout Counter is added to protect the system from hanging state. In 
 * most of the cases timeout counter value is < 50 but as clear command takes 
 * time, and at that point counter value is around < 1800. Things will change 
 * with operating frequency of micro. Please re-evaluate the optimum value for
 * your setup.
 */
static void lcd_busy( void )
{
  uint32_t timeout = 0u;
  u8_t value;
  lcd_initialized = TRUE;               // Become False if, initialization fails
  LCD_BUSY_PIN_DIR = 1;                 // Make Busy Pin as Input.
  
  LCD_RS = 0;
  LCD_RW = 1;
  value = LCD_BUSY_PIN;
  while( value )
  {
    LCD_EN = 1;
    Nop();
    Nop();
    value = LCD_BUSY_PIN;
    Nop();
    LCD_EN = 0;
    Nop();
    Nop();
    Nop();
    Nop();
    LCD_EN = 1;
    Nop();
    Nop();
    // value = LCD_BUSY_PIN;
    Nop();
    LCD_EN = 0;
    timeout++;
    if( timeout > 2500u)
    {
      lcd_initialized = FALSE;
      break;
    }
  }
  LCD_BUSY_PIN_DIR = 0;                 // Make Busy Pin as Output.
  LCD_RS = 0;
}
#else
/**
 * @brief Delay For LCD.
 *
 * @warning Note Accurate, approximate.
 */
static void lcd_delay_ms( uint32_t ms )
{
  uint32_t timestamp = millis();
  while( millis() - timestamp <= ms );
}
#endif
