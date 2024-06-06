# Control System Analysis Project

This project focuses on the analysis of a control system using various classical control theory tools such as Bode plots, Nyquist plots, and the calculation of system parameters like gain and phase margins. The MATLAB script provided is designed to help understand and visualize these concepts.

## Project Description

The script defines a transfer function for a given control system and computes its important characteristics. These include:
- Bode plot (magnitude and phase response)
- Nyquist plot
- Zeros and poles of the transfer function
- Elementary gain
- Gain crossover frequencies
- Gain margin and phase margin

## Transfer Function

The transfer function \( G(s) \) is defined as:

\[ G(s) = \frac{3000}{s(s^2 + 0.1s + 16)(s - 40)} \]

## Script Breakdown

1. **Transfer Function Definition**:
   The transfer function is defined using the elementary gain \( K \) and the denominator coefficients.

2. **Plot Generation**:
   - **Bode Plot**: Displays the magnitude and phase response of the system.
   - **Nyquist Plot**: Shows the Nyquist plot of the system.

3. **System Characteristics Calculation**:
   - Zeros and poles are computed.
   - The elementary gain of the system is determined.
   - The magnitude and phase response at different frequencies are calculated.
   - Gain crossover frequencies are identified.
   - Gain margin and phase margin are calculated and converted to dB.

4. **Result Display**:
   The script displays all the computed results including the transfer function zeros, poles, gain, magnitude, phase, gain crossover frequencies, gain margin, and phase margin.
