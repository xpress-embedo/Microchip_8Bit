/* 
 * File:   pwm.h
 * Author: xpress_embedo
 *
 * Created on June 3, 2017, 9:01 PM
 */

#ifndef PWM_H
#define	PWM_H

#include "config.h"

#ifdef	__cplusplus
extern "C"
{
#endif

 /* Function Prototypes*/
boolean PWM1_Init(const u32_t frequency);
void PWM1_Set_Duty(u8_t duty_ratio);
void PWM1_Start();
void PWM1_Stop();


#ifdef	__cplusplus
}
#endif

#endif	/* PWM_H */

