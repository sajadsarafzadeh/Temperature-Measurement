# NTC Thermistor Temperature Measurement System

This project involves the design and calibration of a high-resolution temperature measurement system using a 10kΩ NTC thermistor. The system utilizes a Wheatstone bridge for resistance measurement and an operational amplifier (Op-Amp) to maximize the resolution of the Arduino ADC.

## Project Objectives
* Design a signal conditioning circuit using a **Wheatstone Bridge**.
* Implement a **Differential Amplifier** to utilize the full 0-5V range of the ADC.
* Perform system calibration using **MATLAB** to determine the $R_0$ and $B$ coefficients of the thermistor.
* Develop an **Arduino** firmware to report real-time temperature data at a 5Hz sampling frequency.

## System Architecture
### 1. Hardware Design
The circuit uses a Wheatstone bridge to convert resistance changes into voltage. To improve precision, a differential amplifier (LM324) is employed to scale the output voltage range (initially 0.4V to 3.75V) to better fit the ADC limits.


### 2. Calibration & Modeling
System calibration was performed across five different temperature points. Using MATLAB's curve fitting tool, the following exponential model was established:

$$R_T = R_0 \cdot e^{B\left(\frac{1}{T} - \frac{1}{T_0}\right)}$$ 

**Determined Coefficients:**
* **B-coefficient:** 3707 
* **$R_0$ (at 25°C):** 9.98 kΩ 
* **Goodness of Fit ($R^2$):** 0.9984 

## Files in this Repository
* `Arduino/Thermistor_Read.ino`: Firmware for real-time sensing.
* `MATLAB/Calibration_Fitting.m`: Script for calculating NTC constants.
* `Hardware/Schematic_Fritzing.png`: Visual circuit layout.

**Course:** Measurement Systems, University of Tehran 
**Instructor:** Dr. Sedighi 
