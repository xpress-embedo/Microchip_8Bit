
#include "DHT11.h"
#include "OLED_I2C.h"
#include <stdint.h>

#define MIN_TEMPERATURE     0
#define MAX_TEMPERATURE     50
#define MIN_HUMIDITY        0
#define MAX_HUMIDITY        100

// DHT11 Sensor Image, to be displayed on OLED
const code char DHT11_Image[512] =
{
  0,   0,   0, 248, 136, 200, 168, 168, 168, 168, 152, 152, 248, 152, 152, 152, 248, 152, 152, 152, 248, 152, 152, 152, 248, 152, 152, 152, 248, 152, 152, 152, 152, 248, 152, 152, 152, 248,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0, 255, 255,  68,  68,  68,  68,  68,  68,  68, 255,  68,  68,  68, 255,  68,  68,  68, 255,  68,  68,  68, 255,  68,  68,  68, 255,  68,  68,  68,  68, 255,  68,  68,  68, 255,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,  68,   0,   0,   0,   0,   0, 255, 255, 255,   3,   3,   3,   7,  14, 254, 252, 248,   0,   0, 255, 255, 255,  96,  96,  96,  96, 255, 255, 255,   0,   0,   3,   3,   3,   3, 255, 255, 255,   3,   3,   3,   3,   6,   6,   2, 255, 255, 255,   0,   0,   0,   0,   0,   6,   6,   2, 255, 255, 255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0, 255, 127, 164, 164,  36,  36,  36,  36,  36, 255,  36,  36,  36, 255,  36,  36,  36, 255,  36,  36,  36, 255,  36,  36,  36, 255,  36,  36,  36,  36, 255,  36,  36,  36, 255,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,  36,   0,   0,   0,   0,   0,  31,  31,  31,  24,  24,  24,  28,  14,  15,   7,   1,   0,   0,  31,  31,  31,   0,   0,   0,   0,  31,  31,  31,   0,   0,   0,   0,   0,   0,  31,  31,  31,   0,   0,   0,   0,  24,  24,  24,  31,  31,  31,  24,  24,  24,   0,   0,  24,  24,  24,  31,  31,  31,  24,  24,  24,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   7,   4,   4,   4,   5,   5,   5,   6,   6,   7,   6,   6,   6,   7,   6,   6,   6,   7,   6,   6,   6,   7,   6,   6,   6,   7,   6,   6,   6,   6,   7,   6,   6,   6,   7,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
};

void interrupt() iv 0x0008
{
  if( TMR1IF_bit )
  {
    dht11_int_handler();
  }
}

void main()
{
  uint8_t error;
  uint8_t temperature_text[5], temperature;
  uint8_t humidity_text[5], humidity;
  UART1_Init(9600);
  OLED_Init();
  dht11_init();
  OLED_ClearDisplay();
  OLED_Image( DHT11_Image );
  OLED_Update();
  // Give Sufficient time to display the image
  Delay_ms(2000);
  while(1)
  {
    error = dht11_start_measurement();
    if( error == DHT11_NO_ERROR )
    {
      uint16_t percentage;
      uint16_t x, y;
      // If this is not used, then you will not see changes in bar
      OLED_ClearDisplay();
      // Get Temperature Data
      temperature = dht11_temperature();
      temperature_text[0] = temperature/10 + 48;
      temperature_text[1] = temperature%10 + 48;
      temperature_text[2] = ' ';
      temperature_text[3] = 'C';
      temperature_text[4] = 0;  // Null Character
      // Draw Rectangle
      x = OLED_Width()-(8*4);
      OLED_Rectangle( 0, 0, x, 7, WHITE );
      percentage = temperature * 100;
      percentage = percentage/(MAX_TEMPERATURE - MIN_TEMPERATURE );
      x = percentage * x /100;
      OLED_FillRectangle( 0, 0, x, 7, WHITE );
      OLED_Write_Text( OLED_Width()-(8*3), 0, temperature_text );
      // Get Humidity Data
      humidity = dht11_humidity();
      humidity_text[0] = humidity/10 + 48;
      humidity_text[1] = humidity%10 + 48;
      humidity_text[2] = ' ';
      humidity_text[3] = '%';
      humidity_text[4] = 0;   // Null Character
      x = OLED_Width()-(8*4);
      OLED_Rectangle( 0, 15, x, 23, WHITE );
      percentage = humidity * 100;
      percentage = percentage/(MAX_HUMIDITY - MIN_HUMIDITY );
      x = percentage * x /100;
      OLED_FillRectangle( 0, 15, x, 23, WHITE );
      OLED_Write_Text( OLED_Width()-(8*3), 15, humidity_text );
      
      OLED_Write_Text( 0, 25, "Sensor: OK");
      OLED_Update();
      /*
      Uncomment the code below, to view values on UART
      UART1_Write( dht11_temperature()/10 + 48 );
      UART1_Write( dht11_temperature()%10 + 48 );
      UART1_Write(',');
      UART1_Write( dht11_humidity()/10 + 48 );
      UART1_Write( dht11_humidity()%10 + 48 );
      UART1_Write_Text("\r\n");
      */
    }
    else
    {
      UART1_Write_Text("DHT11 Not Connected");
      switch(error)
      {
        case DHT11_NO_RESPONSE:
          OLED_Write_Text( 0, 25, "Sensor: No Response");
          break;
        case DHT11_CHECKSUM_ERROR:
          OLED_Write_Text( 0, 25, "Sensor: Checksum Error");
          break;
        default:
          OLED_Write_Text( 0, 25, "Sensor: Unknown Error");
          break;
      };
      OLED_Update();
    }
    Delay_ms(1000);
  }
}