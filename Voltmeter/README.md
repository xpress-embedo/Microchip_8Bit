# Digital Voltmeter Using PIC Microcontroller

[Blog Post Link](http://embeddedlaboratory.blogspot.com/2016/11/digital-voltmeter-using-pic-micro.html)

Digital Voltmeters are most common devices for Embedded and Hardware Engineers and are used on daily purpose for measuring voltage values in their circuits. In this post i will show you how to make digital voltmeter using Microchip PIC micro-controller and then display voltage values on multiplexed seven segment display.  

![Digital Voltmeter](https://4.bp.blogspot.com/-jX-ELVuzqJw/WCcqJDZqERI/AAAAAAAAAMU/L5Zm9Oj0as8YA_Jdju7KP5Hz-x9XHj_rwCLcB/s1600/Demo.png)  

In this project, i will just use the Proteus Simulation environment, and we will measure the DC voltage (0-100V) using PIC Analog to Digital Converter. One thing is important, as PIC is a 5V device and directly connecting such a high voltage (100V) on the micro-controller, will definitely (i am not using probably word, as it will definitely blow the device) damage the micro-controller. So to overcome this situation we have to scale down the Maximum Voltage value which is 100V to the Maximum Voltage value which the micro-controller can sense, in this case it is 5V.  
For scaling down the voltage we will use the voltage divider circuit, which is shown below.  

![Voltage Divider](https://3.bp.blogspot.com/-Ewc2lKCutOQ/WCcuOIzuBjI/AAAAAAAAAMc/A54uiblIGww06lnqMITfiCd2UaRMvEKnwCEw/s1600/VoltageDivider.PNG)  

Now a question arises that, how i selected these values of resistor, for that see the following calculations.  
![Calculations](https://3.bp.blogspot.com/-qSuvHJQoiko/WCcuN22M1MI/AAAAAAAAAMg/xrfpTVEd1pYJQ9eWWohP1P2wnw-XMQuMgCLcB/s1600/VoltageDividerCalculations.jpg)  

So i think it is clear now, how to choose the resistor values. But there is point, you will not find 19k resistor in market, but as i am working in simulation so i can tune the resistor value to any value, so in practical use, fine tune the values, with the equation above and with the resistors you have.  
Now lets build the circuit using PIC16F676 micro-controller, the schematic used is given below, as our maximum voltage (100V) value is of 3-digits, so we need only three seven segments but in the schematic, four seven segments are used, because in the Proteus i didn't find the multiplexed seven segments having only three seven segments, so i used the one with four seven segments but as you can see in the schematic the fourth one is disabled.  

![Simulation File](https://2.bp.blogspot.com/-8W7dTN8aMtw/WCcw9KxRerI/AAAAAAAAAMw/bFvYoGupTAU5FNSoA1KAaYFPXg516aoBgCLcB/s1600/SchematicDiagram.PNG)  

The above program is written in MPLAB-X 3.40 with XC8 v1.38 Compiler.

### Calculation Logic Explanation:
The Voltage which needs to be measured is first scaled down by 20 times with the help of voltage divider circuit, so whatever voltage PIC micro-controller's analog to digital converter will measure, have to be multiplied by 20 times to get back the exact value.  
But if you see the code given below, all the above calculation is done in a single line i.e. by dividing the adc value by 10.  
![Calculation Part in Source Code](https://1.bp.blogspot.com/-iwy9n5QuMCs/WCdETUJLARI/AAAAAAAAANQ/_OkRxjUXknQHJPwYCRUvYaHTCND7uSFEwCLcB/s1600/SourceCode.png)  

Now i will explain, why i just divided the adc value by 10 instead of doing what i have written in the first line of this section. So lets understand all this, step by step:  
* We get digital value of the analog signal and let's say it is stored in ADC_DATA variable.
* Next step is to convert this digital value in voltage.
* Analog Value Sensed by PIC,
  ```
  ANALOG_VALUE_PIC = (Reference Voltage*ADC_DATA)/(2^10)
  ANALOG_VALUE_PIC = (5*ADC_DATA)/(1024)
  ```
* Reference Voltage in our case is 5V and we are using 10-bit ADC of PIC micro-controller, that's why 2^10 = 1024 is used.
  `ANALOG_VALUE = ANALOG_VALUE_PIC * 20`
  We multiplied by 20 because, we scale down the voltage by 20 as explained above.
  `ANALOG_VALUE = (5*20/1024)*ADC_DATA`
* So it's clear from the above expression, that we have (5*10/1024) as constant value, which is equivalent to = 0.098 and i rounded off this to 0.01 or (1/10), to make the calculation simple, with some error in the system.
* Final Expression, ANALOG_VALUE = ADC_DATA/10 

So, it depends on you which method you want to use, the method i used will save the huge space but is not accurate, and the another will consume space but is accurate. So choice is yours.

![Sample-1](https://3.bp.blogspot.com/-9UVTW5f44FU/WCcx5AwTLSI/AAAAAAAAAM0/o4fJcWi_Qvc6JKvhzl-5kQlZPR2JKM8AwCLcB/s1600/Demo-1.png)  

![Sample-2](https://2.bp.blogspot.com/-hDhEcgAHTU4/WCcx5X4mdEI/AAAAAAAAAM4/1rWLCQvkUu4_bZXiXxUaLCpHSaWrASefwCLcB/s1600/Demo-2.png)  