%   x(t)= e -0.1t, for t= 0 to 40mS in steps of 0.1mS. Give title, xlabel and ylabel to be "Exponential Signal", "Time[mS]", "Amplitude".
t = 0 : 0.1 : 40;
Y = exp(-0.1 * t);
plot(Y);
title('Exponential Signal');
xlabel('Time [ms]');
ylabel('Amplitude');