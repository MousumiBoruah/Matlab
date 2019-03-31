%Generate 256 samples of a sinusoidal signals of frequency 1KHz and 1.5KHz with a sampling frequency of 7KHz. Plot the signals and its spectrum. Now check that there will have the peak at frequency 1KHz and 1.5 KHz whose magnitude of the sinusoidal components are 40dB and close to 42dB respectively
f1 = 1000;
f2 = 1500;
fs = 7000;
t = 0 : 1/fs :256/fs -(1/fs);
signal_1 = sin(2*pi*f1*t);
signal_2 = sin(2*pi*f2*t);

subplot(2,2,1);
plot(signal_1);
grid on;

subplot(2,2,2);
plot(signal_2);
grid on;

f1 = fft(signal_1);
f2 = fft(signal_2);

fx = 0:(256/2) - 1;% first make a vector for f = 0,1,2,.....(N/2)-1
fx = (fx.*fs)/256;% Now scale it so that it represents frequencies in Hz
fx1 = 20*log10(abs(f1));
fx2 = 20*log10(abs(f2));

subplot(2,2,3);
plot(fx,fx1(1:128));
title('FREQUENCY DOMAIN SIGNAL-1');
grid on;

subplot(2,2,4);
plot(fx,fx2(1:128));
title('FREQUENCY DOMAIN SIGNAL-2');
grid on;

