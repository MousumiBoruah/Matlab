%x1 attenuate by factor of 10.
fs = 8000;
x1 = 150;
x2 = 450;
x3 = 1500;
N = 128;
t = 0 : 1/fs : N/fs;
signal1 = sin(2*pi*x1*t);
subplot(1,2,1);
plot(signal1);
title('signal_1 with frequency 150Hz');
xlabel('time');
ylabel('Ampitude');
subplot(1,2,2);
plot(0.1*signal1);
title('Attenuated signal');
xlabel('time');
ylabel('Ampitude');
