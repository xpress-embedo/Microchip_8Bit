/**
 * @file keypad.c
 * @author Embedded Laboratory
 * @date June 16, 2016
 * @brief Keypad Sense related functions and Algorithm.
 * 
 */

#include "keypad.h"

static Keypad_s s_keypad;             /**< Keypad Structure.*/

/* Private Functions */
static u8_t _Process_Keypress( void );
static u8_t _Sense_Keypress( void );

/**
 * @brief Initialize Matrix Keyboard.
 *
 * Initialize 4x4 Matrix Keypad.
 * 
 */
void Initialize_Keypad( void )
{ 
  // Initialize Columns as Input
  KEY_1_DIR = 1;
  KEY_2_DIR = 1;
  KEY_1_CONFIG = 0;
  // COL_2_CONFIG = 0;
}

/**
 * @brief Get Pressed Key Value.
 *
 * This function returns the key pressed on the Matrix Keypad.
 * return Pressed Key Value Stored in Config.
 * @note This function returns 0u/NO_KEY if no key press is detected.
 */
u8_t getKey( void )
{
  u8_t key;
  key = _Process_Keypress();
  if(key == NO_KEYs)
  {
    key = NO_KEY;
  }
  return key;
}

/**
 * @brief Scan Key Press.
 *
 * This is a private function, this returns the pressed key, but it don't care
 * about anything else, like debouncing and other things.
 * return Pressed Key Value Stored in Config.
 * @note This function returns 0xff/NO_KEYs if no key press is detected.
 */
static u8_t _Sense_Keypress( void )
{
  u8_t keypress = NO_KEYs;
  if( !( KEY_1 & 0x01 ) )
    keypress = 1u;
  if( !( KEY_2 & 0x01 ) )
    keypress = 2u;
  
  return keypress;
}

/**
 * @brief Process Detected Key Press.
 *
 * This is a private function, it process the detected key press, anc checks its
 * validity.
 * return Pressed Key Value Stored in Config.
 * @note This function returns 0xff/NO_KEYs if no key press is detected.
 */
static u8_t _Process_Keypress( void )
{
  s_keypad.keyPressed = _Sense_Keypress();
  switch( s_keypad.keypad_state )
  {
  case KEYPAD_UP:
    if( s_keypad.keyPressed != NO_KEYs )
    {
      s_keypad.keySensed = s_keypad.keyPressed;
      s_keypad.keyStatus_timeStamp = millis();
      s_keypad.keypad_state = KEYPAD_DEBOUNCE;
    }
    else
    {
      s_keypad.keySensed = NO_KEYs;
    }
    break;
  case KEYPAD_DEBOUNCE:
    if(s_keypad.keyPressed != NO_KEYs)
    {
      if(s_keypad.keyPressed == s_keypad.keySensed )
      {
        if( (millis() - s_keypad.keyStatus_timeStamp ) > KEYPAD_DEBOUNCE_TIME )
        {
          s_keypad.keypad_state = KEYPAD_PRESSED;
          s_keypad.keyStatus_timeStamp = millis();
          return s_keypad.keySensed;
        }
      }
      else
      {
        s_keypad.keyStatus_timeStamp = millis();
        s_keypad.keySensed = s_keypad.keyPressed;
      }
    }
    else
    {
      s_keypad.keypad_state = KEYPAD_UP;
      s_keypad.keySensed = NO_KEYs;
    }
    break;
  case KEYPAD_PRESSED:
    if( s_keypad.keyPressed != NO_KEYs )
    {
      if( s_keypad.keySensed == s_keypad.keyPressed )
      {
        s_keypad.keypad_state= KEYPAD_DOWN;
      }
      else
      {
        s_keypad.keypad_state= KEYPAD_DEBOUNCE;
      }
    }
    else
    {
      s_keypad.keypad_state= KEYPAD_RELEASED;
    }
    s_keypad.keyStatus_timeStamp = millis();
    break;
  case KEYPAD_DOWN:
    if(s_keypad.keySensed == s_keypad.keyPressed )
    {
      if((millis() - s_keypad.keyStatus_timeStamp) > KEYPAD_HOLD_TIME )
      {
        s_keypad.keypad_state = KEYPAD_HELD;
        s_keypad.keyStatus_timeStamp = millis();
      }
    }
    else
    {
      s_keypad.keypad_state = KEYPAD_RELEASED;
      s_keypad.keyStatus_timeStamp = millis();
    }
    break;
  case KEYPAD_HELD:
    if( s_keypad.keySensed != s_keypad.keyPressed )
    {
      s_keypad.keypad_state = KEYPAD_RELEASED;
      s_keypad.keyStatus_timeStamp = millis();
      return s_keypad.keySensed;
    }
    else if( millis() - s_keypad.keyStatus_timeStamp > KEYPAD_REPEAT_TIME )
    {
      s_keypad.keyStatus_timeStamp = millis();
      return s_keypad.keySensed;
    }
    break;
  case KEYPAD_RELEASED:
    if( s_keypad.keyPressed == NO_KEYs )
    {
      s_keypad.keypad_state = KEYPAD_UP;
    }
    else
    {
      s_keypad.keypad_state = KEYPAD_DEBOUNCE;
      s_keypad.keySensed = s_keypad.keyPressed;
      s_keypad.keyStatus_timeStamp = millis();
    }
    break;
  default:
    s_keypad.keypad_state = KEYPAD_UP;
    s_keypad.keyPressed = 0u;
    s_keypad.keySensed = 0u;
    s_keypad.keyStatus_timeStamp = 0u;
    break;
  }
  return NO_KEYs;
}
