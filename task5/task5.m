f=1000;
Fs=8192;
n=1:8192;
S=sin((2*pi*n*f)/Fs);
Y=fft(S);
P2=abs(fftshift(Y));
a_x=((-0.5+1/length(S)):1/length(S):0.5)*Fs;
plot(a_x,P2);