/**
 * @file keypad.h
 * @author Embedded Laboratory
 * @date June 16, 2016
 * @brief Matrix Keypad Related Macros and Function Prototypes.
 *
 */

#ifndef KEYPAD_H_
#define KEYPAD_H_

#include "config.h"

#define KEY_1           PORTAbits.RA3     /**< Col 1 Pin Number.*/
#define KEY_1_DIR       TRISA3            /**< Col 1 Port.*/
#define KEY_1_CONFIG    ANSA3             /**< Configure Column as Digital IO.*/
#define KEY_2           PORTAbits.RA4     /**< Col 2 Pin Number.*/
#define KEY_2_DIR       TRISA4            /**< Col 2 Port.*/
// #define COL_2_CONFIG    ANSELAbits.ANSA4   /**< Configure Column as Digital IO.*/

#define KEYPAD_DEBOUNCE_TIME    25u       /**< Debounce Time in msec.*/
#define KEYPAD_HOLD_TIME        2000u     /**< Keypad Hold Time before Repeat.*/
#define KEYPAD_REPEAT_TIME      050u      /**< Keypad Repeat Time.*/

#define NO_KEYs                 255u      /**< No Key Pressed.*/
#define NO_KEY                  0u        /**< No Key Pressed.*/

/**
 * @brief Keypad States
 *
 * Different States of Matrix Keypad used by State Machine.
 */
typedef enum _Keypad_State_e
{
  KEYPAD_UP = 0,      /**< Key Up State, Initial State.*/
  KEYPAD_PRESSED,     /**< Key Pressed Detected State.*/
  KEYPAD_DOWN,        /**< Key Still Pressed State.*/
  KEYPAD_HELD,        /**< Key Hold Down for Repetetion State.*/
  KEYPAD_RELEASED,    /**< Key Release State.*/
  KEYPAD_DEBOUNCE     /**< Key Debouncing State.*/
} Keypad_State_e;

/**
 * @brief Keypad Structure
 *
 * Handle Matrix Keypad Data.
 */
typedef struct _Keypad_s
{
  u8_t keyPressed;              /**< Key Pressed Detected.*/
  u8_t keySensed;               /**< Key Sensed based on algorithm.*/
  u32_t keyStatus_timeStamp;    /**< Key State Change Timestamp.*/
  Keypad_State_e keypad_state;  /**< Keypad Current State.*/
} Keypad_s;

/* Public Function Prototypes*/
void Initialize_Keypad( void );
u8_t getKey( void );

#endif /* KEYPAD_H_ */
