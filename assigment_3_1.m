%Generate 128 samples of two random signals for Gaussian and Uniformly distributed random numbers and plot them. Take the sampling frequency to be 8KHz. Also generate a sinusoidal signals say x1of frequency 120Hz. Take the amplitude A to be 1, phase to be 0 and sampling frequency to be 8KHz. Now add the noise (both the noisy signal Gaussian and Uniform) to x1 one by one and plot the same.
fs = 8000;
gaussian_noise = randn(1,128);
uniform_noise = rand(1,128);
f = 120;
N = 128;
t = 0 : 1/fs :0.016-(1/fs);
signal = sin(2 * pi *f *t);
subplot(1,3,1);
plot(signal);
title('sinusoidal signal');
subplot(1,3,2);
plot(signal+gaussian_noise);
title('gaussian noise added signal');
subplot(1,3,3);
plot(signal+uniform_noise);
title('uniform noise added signal');
