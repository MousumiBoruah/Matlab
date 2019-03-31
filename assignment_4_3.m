% Now estimate the frequency contents of the sinewave and the noisy signal using fft.
% Here you need to do the following (i) take 256 point fft of the signals
% [Hint: use command fft(signal,n), n is the points to be taken] 
% (ii) take the amplitude spectra of the 256 points of the signal [Hint: use abs() command] and plot 
% (iii) take the discretised plot of the amplitudes [Hint: use stem() command] and plot.
f = 1;
fs = 200;
N = 1024;
t = 0 : 1/fs : N/fs - 1/fs;
signal = sin(2 * pi * f *t);

subplot(6,1,1);
plot(t,signal);
title('sinewave with freq.=1HZ');
xlabel('time');
ylabel('amplitude');


%Gaussian Noise
gaussian_noise = randn(1 ,length(signal));
new_signal = signal + gaussian_noise;

%New signal with added Noise
subplot(6,1,2);
plot(t,new_signal);
title('Noise added signal');
xlabel('time');
ylabel('amplitude');


%fourier transform
f1 = abs(fft(signal,256 ));
f2 = abs(fft(new_signal,256));

subplot(6,1,3);
plot(f1);
title('Fourier Transform signal');
xlabel('frequency');
ylabel('amplitude');


subplot(6,1,4);
plot(f2);
title('Fourier Transform gaussian_signal');
xlabel('frequency');
ylabel('amplitude');

subplot(6,1,5);
stem(f1);
title('Discretised Fourier Transform signal');
xlabel('frequency');
ylabel('amplitude');

subplot(6,1,6);
stem(f2);
title('Discretised Fourier Transform gaussian_ssignal');
xlabel('frequency');
ylabel('amplitude');

