%   Modify the program of (a) to add white noise (Gaussian noise).
%   Now estimate and plot the cross-correlation of both the signals (sinewave and the noisy signal). 
%   Now observe the output to figure out the cross-correlated behavior of the two signals.
%   [Hint: use command xcorr(signal1, signal2)]

f = 1;
fs = 200;
N = 1024;
t = 0 : 1/fs : N/fs - 1/fs;
signal = sin(2 * pi * f *t);

subplot(3,1,1);
plot(t,signal);
title('sinewave with freq.=1HZ');
xlabel('time');
ylabel('amplitude');

%Gaussian Noise
gaussian_noise = randn(1 ,length(signal));
new_signal = signal + gaussian_noise;

%New signal with added Noise
subplot(3,1,2);
plot(new_signal);
title('Noise added signal');
xlabel('time');
ylabel('amplitude');

%Cross-correlation
[crosscorr,lags] = xcorr(signal,new_signal);
subplot(3,1,3);
plot(lags,crosscorr);
