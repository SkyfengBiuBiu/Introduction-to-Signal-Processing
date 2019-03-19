fc=((15+18)/2)/44.1;
f=(18-15)/44.1;
N=ceil(3.1/f);
if N%2==0
    N=N+1;
end
% n=(N-1)/2;
% w=hanning(N);
% h=-2*fc*sinc(n*2*fc);
% ht=w.*h';
% ht((N-1)/2+1)=1-2*fc;


ht= fir1 (N-1, 2*fc, 'high', hann(N));

%why is it?
% subplot(211);
% plot(1:47,ht);
% subplot(212);
% plot(1:47,d);

[h,t] = impz(ht);
subplot(311);
stem(t,h);
[H,W] = freqz(ht);
 subplot(312);
plot(W/(2*pi),20*log10(abs(H)));
ht= fir1 (N-1, 2*fc, 'high', hann(N));
 subplot(313);
 zplane(ht);

