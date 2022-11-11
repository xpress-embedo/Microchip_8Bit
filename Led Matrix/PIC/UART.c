
#include "UART.h"

void UART_Init(void)
{
    TRISCbits.TRISC7=1;
    TRISCbits.TRISC6=0;
    TXSTA = 0x22;
    SPBRG = 77;         //48MHz Operating Frequency
    //Baud Rate Control Bit
    BAUDCONbits.BRG16 = 0;//		//8-Bit Baud Rate Generator
    TXSTAbits.BRGH = 0;			//Low Baud Speed Mode
    SPBRG = 77;         //48MHz Operating Frequency
    
    TXSTAbits.TXEN = 1;
    RCSTAbits.SPEN = 1;
    RCSTAbits.CREN = 1;
}
void UART_Write(unsigned char data)
{
    Correct_UART_Errors();
    while(PIR1bits.TXIF == 0);
    TXREG = data;
}
void UART_Write_Text(unsigned char *msg)
{
    while(*msg)
    {
        UART_Write(*msg);
        while(!UART_Write_Busy());
        msg++;
    }
}
unsigned char UART_Read(void)
{
    while(PIR1bits.RCIF == 0);
    return RCREG;
}
unsigned char UART_Data_Ready(void)
{
    if(PIR1bits.RCIF == 1)
        return 1;
    else
        return 0;
}
unsigned char UART_Write_Busy(void)
{    
    return(TXSTAbits.TRMT);
}
void Correct_UART_Errors(void)
{
    if((RCSTAbits.OERR==1) || (RCSTAbits.FERR==1))
    {
        DISABLE_UART_RECEPTION();
        ENABLE_UART_RECEPTION();
    }
}
