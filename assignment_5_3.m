% Capture 1000 samples of your voice using the "audiorecoder" function in matlab with a sampling rate of 8000 samples/secondand 8 bits per sample.
% Compute the spectrum of the signal using the "fft" function.
% Get plots of the signal and the spectrum and determine the 3 dB bandwidth (effective BW) of the signal.
% Repeat the above for 5(five) different voice samples of yours and compute the average of the bandwidths.

fs = 8000;
no_of_bit = 16;
no_of_channels = 2;

rec_object = audiorecorder(fs,no_of_bit,no_of_channels);
disp('Start Speaking');
recordblocking(rec_object,5);
disp('Stop Speaking');
play(rec_object);

y = getaudiodata(rec_object);
plot(y);
