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

The transfer function \( G(s) \) in this project is defined with a specific elementary gain and polynomial structure in both the numerator and the denominator. The script defines the transfer function as follows:

G(s) = K/[s*(s^2 + 0.1s + 16)*(s - 40)]

In the script, this transfer function is represented by specifying the coefficients of the numerator and the denominator polynomials in descending order of \( s \). If a term is missing (e.g., no \( s^2 \) term), a coefficient of 0 is used in its place.

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

---------------------------------------------------

Feel free to customize it further as needed!
