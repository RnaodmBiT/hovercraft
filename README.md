 # MiniBot

This project will produce a PCB design that can be used for prototyping remote control vehicles. It is inspired by the University of Canterbury ECE Departments 'Wacky Racers' competition. The objective is to follow most of the rules of that competition however the entire design will fit on a single PCB and be as small as possible.

 ## Requirements
  - Support a number of external ESCs and Servos.
  - Be remote controlled. This might require a second USB dongle to be produced if Bluetooth or WiFi isn't used.
  - Be able to take still images and transmit then to the controller.
  - It should include an accelerometer, gyroscope, and magnetometer for any control systems.
  - Be programmable over JTAG or USB.
  - Use as minimum number of parts.
  - Make use of an STM32 microcontroller.


 ## Connectivity
  - Radio
    - RN41
      - UART
      - LED connected to GPIO5 (Open Drain)
      - Connect GPIOs 3/4/6 to GND
      - Connect GPIO 7 to ground with solder bridge high
      
    - RFM69