/* 
 * File:   mainv0.1.c
 * Author: Sharma
 *
 * Created on August 3, 2014, 7:25 AM
 * mainv0.1
   Alphabets Lookup table is created and displayed on Single 8x8 Led Matrix, with a variable
   Repeat to increase or decrease the display time of each character.
 * mainv0.2
   Alphabets Lookup table is taken from EmbeddedLab website tutorials. Scrolling on Single Matrix
   is tested and working Properly.
 * mainv0.3
   Scrolling on Multiple Matrix (7 LED Matrix) is tested as Static Text, Left to Right Movement
   Right to Left Movement.
 * mainv0.4
   ConfigurationFile.h is added to Project and from Serial Port Data Upgradtion is added with Direction Control and Shift Speed.
 */

#include "ConfigurationFile.h"

void DelayMs(unsigned int itime);
void ShiftRegisterInit(void);
void ShiftRegisterWrite(unsigned char Data);

unsigned char DisplayBuffer[8][8]= {
									0,0,0,0,0,0,0,0,
									0,0,0,0,0,0,0,0,
									0,0,0,0,0,0,0,0,
									0,0,0,0,0,0,0,0,
									0,0,0,0,0,0,0,0,
									0,0,0,0,0,0,0,0,
									0,0,0,0,0,0,0,0,
									0,0,0,0,0,0,0,0
									};

unsigned char SerialData[SERIAL_DATA_SIZE]={0};
unsigned char SerialDataIndex=0;
unsigned char SerialCharacter,HeaderDetected=0,PacketValidity=0,PacketLength,RequestType,ShiftSpeed=0;

/*Interrupt Service Routine*/
void interrupt low_priority Interrupt_Handler_High(void)
{
	if(PIE1bits.RCIE&&PIR1bits.RCIF)
	{
		SerialCharacter=UART_REC_DATA();
		switch(SerialCharacter)
		{
			case SERIAL_HEADER:
			HeaderDetected=1;
			SerialDataIndex=0;
			break;
			case SERIAL_FOOTER:
			if(HeaderDetected==1)
			{
				HeaderDetected=0;				
				PacketLength=(SerialData[0]-0x30)*10+(SerialData[1]-0x30);
				RequestType = SerialData[2];
				ShiftSpeed = SerialData[3];
				if(PacketLength == SerialDataIndex)
				{
					PacketValidity=1;					
				}
				else
				{
					PacketValidity=0;					
					UART_Write_Text((unsigned char*)"*ERROR$");
				}
			}
			break;
			default:
			if(HeaderDetected==1)
			{
				SerialData[SerialDataIndex]=SerialCharacter;
				SerialDataIndex++;
			}
			break;
		}		
		PIR1bits.RCIF=0;
	}
}
/***************************/
void main()
{
	unsigned int i;
	unsigned char Repeat,Column,num,scroll,shift_step=1,row;	
	unsigned char index=0;
	unsigned char temp,length;
	unsigned char Message[SERIAL_DATA_SIZE]={0};
	unsigned char DisplayType = 2;		//1-> Left to Right 2-> Right to Left 3-> Static Display 4-> Blink Display
	TRISD = 0x00;
	UART_Init();
	UART_Write_Text((unsigned char*)"LED MATRIX\r\n");
	UART_Write_Text((unsigned char*)"ENTER THE PACKET TO BE DISPLAYED ON LED MATRIX??\r\n");
	
	ENABLE_UART_REC_INTERRUPT();
	ENABLE_PERIPHERAL_INTERRUPT();
	ENABLE_GLOBAL_INTERRUPT();	
    ShiftRegisterInit();
    while(1)
    {
	    if(PacketValidity==1)
	    {
		    for(i=0;i<SERIAL_DATA_SIZE;i++)
		    {
			    Message[i]=0;	//Clear Buffer
		    }
		    for(i=0;i<PacketLength;i++)
			{
				Message[i]=SerialData[i+4];
			}
			i++;
			Message[i]=0;	//Null Character
			PacketValidity=0;
			DisplayType = RequestType;
			shift_step = ShiftSpeed;
			shift_step=shift_step-0x30;
	    }
	    length = strlen(Message);
	    for(num=0;num<length;num++)
	    {
		    if(PacketValidity==1)
		    {
			    break;	//New Message Packet Received
		    }
		    for(scroll=0;scroll<8/shift_step;scroll++)
		    {
			    for(row=0;row<8;row++)
			    {				    
				    switch(DisplayType)
			    	{
				    	case LEFT_TO_RIGHT:
				    	index = Message[num];
						temp = CharData[index-32][row];
						DisplayBuffer[row][6] = (DisplayBuffer[row][6]<<shift_step)|(DisplayBuffer[row][5]>>(8-shift_step));
						DisplayBuffer[row][5] = (DisplayBuffer[row][5]<<shift_step)|(DisplayBuffer[row][4]>>(8-shift_step));
						DisplayBuffer[row][4] = (DisplayBuffer[row][4]<<shift_step)|(DisplayBuffer[row][3]>>(8-shift_step));
						DisplayBuffer[row][3] = (DisplayBuffer[row][3]<<shift_step)|(DisplayBuffer[row][2]>>(8-shift_step));
						DisplayBuffer[row][2] = (DisplayBuffer[row][2]<<shift_step)|(DisplayBuffer[row][1]>>(8-shift_step));
						DisplayBuffer[row][1] = (DisplayBuffer[row][1]<<shift_step)|(DisplayBuffer[row][0]>>(8-shift_step));
						DisplayBuffer[row][0] = (DisplayBuffer[row][0]<<shift_step)|(temp>>((8-shift_step)-scroll*shift_step));			    	
				    	break;
				    	
				    	case RIGHT_TO_LEFT:
				    	index = Message[length-num-1];
						temp = CharData[index-32][row];
				    	DisplayBuffer[row][0] = (DisplayBuffer[row][0]>>shift_step)|(DisplayBuffer[row][1]<<(8-shift_step));
						DisplayBuffer[row][1] = (DisplayBuffer[row][1]>>shift_step)|(DisplayBuffer[row][2]<<(8-shift_step));
						DisplayBuffer[row][2] = (DisplayBuffer[row][2]>>shift_step)|(DisplayBuffer[row][3]<<(8-shift_step));
						DisplayBuffer[row][3] = (DisplayBuffer[row][3]>>shift_step)|(DisplayBuffer[row][4]<<(8-shift_step));
						DisplayBuffer[row][4] = (DisplayBuffer[row][4]>>shift_step)|(DisplayBuffer[row][5]<<(8-shift_step));
						DisplayBuffer[row][5] = (DisplayBuffer[row][5]>>shift_step)|(DisplayBuffer[row][6]<<(8-shift_step));
						DisplayBuffer[row][6] = (DisplayBuffer[row][6]>>shift_step)|(temp<<((8-shift_step)-scroll*shift_step));
				    	break;
				    	
				    	case REVERSE_LEFT_TO_RIGHT:
				    	index = Message[num];
						temp = CharData[index-32][row];
				    	temp = ~temp;
						DisplayBuffer[row][6] = (DisplayBuffer[row][6]<<shift_step)|(DisplayBuffer[row][5]>>(8-shift_step));
						DisplayBuffer[row][5] = (DisplayBuffer[row][5]<<shift_step)|(DisplayBuffer[row][4]>>(8-shift_step));
						DisplayBuffer[row][4] = (DisplayBuffer[row][4]<<shift_step)|(DisplayBuffer[row][3]>>(8-shift_step));
						DisplayBuffer[row][3] = (DisplayBuffer[row][3]<<shift_step)|(DisplayBuffer[row][2]>>(8-shift_step));
						DisplayBuffer[row][2] = (DisplayBuffer[row][2]<<shift_step)|(DisplayBuffer[row][1]>>(8-shift_step));
						DisplayBuffer[row][1] = (DisplayBuffer[row][1]<<shift_step)|(DisplayBuffer[row][0]>>(8-shift_step));
						DisplayBuffer[row][0] = (DisplayBuffer[row][0]<<shift_step)|(temp>>((8-shift_step)-scroll*shift_step));
				    	break;
				    	
				    	case REVERSE_RIGHT_TO_LEFT:
				    	index = Message[length-num-1];
						temp = CharData[index-32][row];
				    	temp = ~temp;
				    	DisplayBuffer[row][0] = (DisplayBuffer[row][0]>>shift_step)|(DisplayBuffer[row][1]<<(8-shift_step));
						DisplayBuffer[row][1] = (DisplayBuffer[row][1]>>shift_step)|(DisplayBuffer[row][2]<<(8-shift_step));
						DisplayBuffer[row][2] = (DisplayBuffer[row][2]>>shift_step)|(DisplayBuffer[row][3]<<(8-shift_step));
						DisplayBuffer[row][3] = (DisplayBuffer[row][3]>>shift_step)|(DisplayBuffer[row][4]<<(8-shift_step));
						DisplayBuffer[row][4] = (DisplayBuffer[row][4]>>shift_step)|(DisplayBuffer[row][5]<<(8-shift_step));
						DisplayBuffer[row][5] = (DisplayBuffer[row][5]>>shift_step)|(DisplayBuffer[row][6]<<(8-shift_step));
						DisplayBuffer[row][6] = (DisplayBuffer[row][6]>>shift_step)|(temp<<((8-shift_step)-scroll*shift_step));
				    	break;
				    	
				    	case STILL_DISPLAY:
				    	index = Message[num];
						temp = CharData[index-32][row];
				    	DisplayBuffer[row][6-num] = temp;
				    	if(num==7)				    	
				    		num=0;
				    	break;
			    	}		    
			    }//End Of Switch Statement
			    
			    switch(DisplayType)
			    {
				    case STILL_DISPLAY:
				    Column = 0x01;
			   		for(i=0;i<8;i++)
			   		{			    	
			   			LATD = Column;
			   			ShiftRegisterWrite(i);
			   			Column<<=1;
						__delay_ms(1);				   		
					}
				    break;
				    
				    case FLASH_DISPLAY:				    				    
				    break;
				    
				    case LEFT_TO_RIGHT:
				    case RIGHT_TO_LEFT:
				    case REVERSE_LEFT_TO_RIGHT:
				    case REVERSE_RIGHT_TO_LEFT:
				    for(Repeat=0;Repeat<REPEAT_TIME;Repeat++)
					{
			    		Column = 0x01;
			   			for(i=0;i<8;i++)
			   			{			    	
			   				LATD = Column;
			   				ShiftRegisterWrite(i);
			   				Column<<=1;
							__delay_ms(1);				   		
						}
					}
					break;
			    }//End of Switch Statement
			    
		    }
	    }
	}
}

void DelayMs(unsigned int itime)
{
    /*
    unsigned char time,i;
    time=itime/10;
    for(i=0;i<time;i++)
    */
    {
        __delay_ms(1);
    }
    
}
void ShiftRegisterInit(void)
{
	TRISCbits.TRISC0 = 0;
	TRISCbits.TRISC1 = 0;
	TRISCbits.TRISC2 = 0;
	SH_CP = 0;
	ST_CP = 0;
	DS = 0;
}
void ShiftRegisterWrite(unsigned char Row)
{
    unsigned char Flag,Mask,i,num;
    for(num=0;num<7;num++)
    {
	    Mask = 0x01;
	    for(i=0;i<8;i++)
	    {
		    Flag = DisplayBuffer[Row][num] & Mask;   	
	        if(Flag == 0)
	        {
	            DS=0;
	        }
	        else
	        {
	            DS=1;
	        }
	        SH_CP=1;
	        SH_CP=0;
	        Mask<<=1;
	    }	    
	}
	ST_CP=1;
	ST_CP=0;
}

