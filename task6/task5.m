clear;
load("corrupt");
load("handel");
Y=fft(y);
Z=fft(z);
H=Z./Y;
h=ifft(H);
stem(1:10,h(1:10));