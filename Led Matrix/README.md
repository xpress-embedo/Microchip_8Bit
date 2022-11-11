# PIC Based LED Matrix Display Controller
_NOTE: This is a very old project and is not tested in recent times._  

[Blog Post Link](http://embeddedlaboratory.blogspot.com/2016/10/pic-controller-led-matrix-display.html)  

Led Matrix are the combination of Led's in Matrix form, it is basically used to display messages. One have seen the Led Matrix displays on various public places such as in trains, railways stations, buses, hospitals, shops etc.  
![Working Demo](https://3.bp.blogspot.com/-fRn-3UvMvdg/V_5lKJdBx2I/AAAAAAAAAIA/-yCozMj_KncdWZv9AMclsQdXfDGToV5fACLcB/s1600/Project%2BWorking.png)  

In this post, I will show you how to create once such display using PIC micro-controller and Led Matrix.  

In this Led Matrix Project seven 8x8 Led Matrix are used to Display Text on these matrix. The Micro-controller used is PIC18F4550 along with MPLAB IDE and MPLAB XC8 compiler v1.31.  
The specialty of this Micro-controller based Led Matrix display is that, the text can be controlled in various ways.  
Some of the features are as follow:  
* PC Software Controls the Text Written on the display, so there is no need to program the micro again and again for displaying different texts. 
* Shifting Speed can be controlled using the PC Software. 
* Shifting Direction can be controlled using the PC Software. 
* Pixel Inversion can also be controlled using PC Software. 
* Static Text can also be displayed, if you don't want shifting texts on display. 
* Text displayed can be flashed using the PC Software (Not Implemented Yet)
* PC Software is written in Visual Basic Express Edition 2010, and is very easy to modify according to the individual requirement.

The simulation diagram is as follow:
![Simulation Diagram](https://3.bp.blogspot.com/-AM2HnGI-AjA/V_5mKh1tCwI/AAAAAAAAAIE/-cccfYv7raM7ek9KeB3AAWFhMZASPaJFQCLcB/s1600/schematic.png)  

The PC Software User Interface used to control the LED Matrix is as follow:  
![PC Software](https://1.bp.blogspot.com/-qGBWo-tLNso/V_5nSlcBsQI/AAAAAAAAAIM/LSHjEHY5L-Ar-D9GnIETmWh2hoSZmwLPQCLcB/s1600/PC%2BSoftware.PNG)  

[Youtube Video Link](https://youtu.be/10Cy6m9Wfp8)  
