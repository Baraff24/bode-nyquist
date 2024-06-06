% Definition of the transfer function
K = 3000; % Elementary gain

% Use this command to define the "raw" transfer function
% s=tf('s')
% Then define the transfer function ==> G = 3000/(s*(s^2+0.1*s+16)*(s-40))
% Finally, list numerator and denominator in descending order
% (if there's no s term, write 0)

% Creating the transfer function
num = K;
den = [1 39.9 12 -640 0];
H = tf(num, den);

% Bode plot (magnitude and phase)
figure;
bode(H);
grid on;
title('Bode Diagram');

% Nyquist plot
figure;
nyquist(H);
grid on;
title('Nyquist Diagram');

% Transfer function zeros
zeros = zero(H);

% Transfer function poles
poles = pole(H);

% Elementary gain
gain = dcgain(H);

% Magnitude of the transfer function
[mag, phase, wout] = bode(H);
mag = squeeze(mag);
phase = squeeze(phase);
wout = squeeze(wout);

% Calculating gain crossover frequencies
break_frequencies = abs(poles);

% Calculating phase margin and gain margin
[GM, PM, Wcg, Wcp] = margin(H);

% Converting gain margin from gain units to dB
GM_dB = 20 * log10(GM);

% Displaying results
disp('Transfer function zeros:');
disp(zeros);

disp('Transfer function poles:');
disp(poles);

disp('Elementary gain:');
disp(gain);

disp('Magnitude of the transfer function at different frequencies:');
disp(table(wout, mag, phase));

disp('Gain crossover frequencies:');
disp(break_frequencies);

disp('Gain margin (dB):');
disp(GM_dB);

disp('Phase margin (degrees):');
disp(PM);

disp('Gain crossover frequency (rad/s):');
disp(Wcg);

disp('Phase crossover frequency (rad/s):');
disp(Wcp);
