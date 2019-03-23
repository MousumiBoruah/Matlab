%Unit Impulse signal ?(n)
n = -10 : 10;
Y = zeros(1,21);
Y(1,11) = 1;
stem(n,Y);
title('Unit impulse signal');
xlabel('n');
ylabel('Amplitude');
