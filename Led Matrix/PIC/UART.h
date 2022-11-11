/* 
 * File:   UART.h
 * Author: Sharma
 *
 * Created on May 30, 2014, 7:00 AM
 */
#include <xc.h>
#ifndef UART_H
#define	UART_H

#define UART_init       UART_Init
#define uart_init       UART_Init

#define UART_write      UART_Write
#define uart_write      UART_Write

#define UART_Write_text UART_Write_Text
#define uart_write_text UART_Write_Text
#define UART_write_text UART_Write_Text

#define UART_read       UART_Read
#define uart_read       UART_Read

#define UART_Data_ready UART_Data_Ready
#define UART_data_ready UART_Data_Ready
#define uart_data_ready UART_Data_Ready

#define UART_REC_DATA() 					RCREG
#define SERIAL_REC_DATA()     				UART_REC_DATA

#define ENABLE_SERIAL_REC_INTERRUPT()     	PIE1bits.RCIE=1
#define DISABLE_SERIAL_REC_INTERRUPT()    	PIE1bits.RCIE=0

#define ENABLE_UART_REC_INTERRUPT()       	ENABLE_SERIAL_REC_INTERRUPT()
#define DISABLE_UART_REC_INTERRUPT()      	DISABLE_SERIAL_REC_INTERRUPT()

#define DISABLE_UART_RECEPTION()	  		RCSTAbits.CREN=0
#define ENABLE_UART_RECEPTION()       		RCSTAbits.CREN=1

void UART_Init(void);
void UART_Write(unsigned char );
void UART_Write_Text(unsigned char *);
unsigned char UART_Read(void);
unsigned char UART_Data_Ready(void);
void Correct_UART_Errors(void);
unsigned char UART_Write_Busy(void);
#endif	/* UART_H */

