/*
 * micro.h
 *
 * Micro-specific definitions. Using the LPC1343 MicroController
 *
 * Created: 29th March, 2014
 *  Author: Embedded Laboratory
 * ========
*/

#ifndef MICRO_H_
#define MICRO_H_

#include <stdint.h>

// Data Types

typedef uint8_t  u8_t;     // 8 bits unsigned
typedef uint16_t u16_t;    // 16 bits unsigned
typedef uint32_t u32_t;    // 32 bits unsigned
typedef int8_t   s8_t;     // 8 bits signed
typedef int16_t  s16_t;    // 16 bits signed
typedef int32_t  s32_t;    // 32 bits signed
typedef uint8_t  boolean;  // boolean 8-bits data type

// Utility Macros

#define SET_BIT(p,n)  ((p) |= ((1ul) << (n)))   /**<Set the bit of variable.*/
#define CLR_BIT(p,n)  ((p) &= ~((1ul) << (n)))  /**<Clear the bit of variable.*/
#define CHECK_BIT(p,n)  ((p) & (1<<(n)))

#ifndef _BV
#define _BV(n) (1UL << (n))
#endif

#ifndef BIT
#define BIT(n) (1UL << (n))
#endif

#ifndef BITS
#define BITS(v, n) ((v) << (n))
#endif

#ifndef LO16
#define LO16(v) ((u8_t)(v))
#endif

#ifndef HI16
#define HI16(v) LO16((v) >> 8)
#endif


#endif /* MICRO_H_ */
