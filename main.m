% Definition of the transfer function
K = 8; % Elementary gain

% Creation of the transfer function without delay
s = tf('s');
H = K / (s * (s + 2)^2);
% It can also be written like this
% num = K;
% den = [1 4 4 0];
% H = tf(num, den);

% Modify this variable if the function has pure delay
delay = false;

if delay == true
    % Definition of the pure delay
    T_delay = 2; % Delay in seconds

    % Approximation of the pure delay with a 10th-order Padé series
    [num_delay, den_delay] = pade(T_delay, 10);
    H_delay = tf(num_delay, den_delay);

    % Total transfer function with delay
    H_total = H * H_delay;
else
    H_total = H;
end

% Bode plot
figure;
bode(H_total);
grid on;
title('Bode Diagram');

% Nyquist plot
figure;
nyquist(H_total);
grid on;
title('Nyquist Diagram');

% Zeros of the transfer function
zeros_total = zero(H_total);

% Poles of the transfer function
poles_total = pole(H_total);

% Elementary gain
gain_total = dcgain(H_total);

% Magnitude of the transfer function
[mag_total, phase_total, wout_total] = bode(H_total);
mag_total = squeeze(mag_total);
phase_total = squeeze(phase_total);
wout_total = squeeze(wout_total);

% Calculation of the break frequencies
break_frequencies_total = abs(poles_total);

% Calculation of phase and gain margins
[GM_total, PM_total, Wcg_total, Wcp_total] = margin(H_total);

% Convert the gain margin from gain units to dB
GM_dB_total = 20 * log10(GM_total);

% Displaying the results
disp('Zeros of the transfer function:');
disp(zeros_total);

disp('Poles of the transfer function:');
disp(poles_total);

disp('Elementary gain:');
disp(gain_total);

disp('Magnitude of the transfer function at different frequencies:');
disp(table(wout_total, mag_total, phase_total));

disp('Break frequencies:');
disp(break_frequencies_total);

disp('Gain margin (dB):');
disp(GM_dB_total);

disp('Phase margin (degrees):');
disp(PM_total);

disp('Unity gain frequency (rad/s):');
disp(Wcg_total);

disp('Phase crossover frequency (rad/s):');
disp(Wcp_total);
