fc=0.3;
n=-20:1:20;
wc=2*pi*fc;
h=2*fc*sinc(wc*n);
H = abs((fft(h)));

x=linspace(-1/fc,-1/fc,41);

plot(x,20*log(H));
