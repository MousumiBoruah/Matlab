% Generate 128 samples of a sinusoidal signals say x1of frequency 120Hz.
% Take the amplitude A to be 1, phase to be 0 and sampling frequency to be 8KHz.
% Now add Gaussian noise to x1 and plot the same. Now remove the noise using ifft and plot the signal.
% (You need to remove the imaginary part after calling ifft by calling matlab function real(), which gives the real part of a complex number).
% Check for the spectrum before and after removing the noise.

f = 120;
fs = 8000;
N = 128;
t = 0 : 1/fs : (N-1)/fs;

%Sine wave
signal= sin(2 * pi * f * t);
subplot(3,2,1);
plot(t,signal);
title('Sine wave');
xlabel('time');
ylabel('amplitude');

%Gaussian Noise
gaussian_noise = randn(1,128);
subplot(3,2,2);
plot(t,gaussian_noise);
title('Gaussian noise');
xlabel('time');
ylabel('amplitude');

new_signal = signal + gaussian_noise;
subplot(3,2,3);
plot(t,new_signal);
title('Noise added signal');
xlabel('time');
ylabel('amplitude');

fx = 0:(128/2) - 1;% first make a vector for f = 0,1,2,.....(N/2)-1
fx = (fx.*fs)/128;% Now scale it so that it represents frequencies in Hz

%Fourier transform
f1 = fft(new_signal);
f2 = fft(gaussian_noise);
f5 = abs(f1);
subplot(3,2,4);
plot(fx,f5(1:64));
title('Fourier Transformed signal of the noise added');
xlabel('frequency');
ylabel('amplitude');

%Inverse Fourier transform
f3 = ifft(f1);
f4 = ifft(f2);

%obtaining the original signal
generated_signal = f3 - f4;
mag_generated_signal=abs(fft(generated_signal));
subplot(3,2,5);
plot(t,real(generated_signal));
title('Obtained signal');
xlabel('time');
ylabel('amplitude');

subplot(3,2,6);
plot(fx,mag_generated_signal(1:64));
title('Fourier Transformed signal of the generated');
xlabel('frequency');
ylabel('amplitude');


