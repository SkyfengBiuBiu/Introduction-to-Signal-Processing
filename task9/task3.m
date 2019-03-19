fc=0.3;
fs=0.5*2;
n=-20:1:20;
h=2*fc*sinc(n*2*fc);
%w=hamming(41);
%ht=w.*h';
[H,W]=freqz(h);
figure,plot(W/(2*pi),20*log10(abs(H)));
grid on;
xlabel('Normalized Frequency')
ylabel('Magnitude (dB)')
%the attenuation of the first oscillatory peak in the stopband is
%approximately 21 dB
%%
fc=0.3;
fs=0.5*2;
n=-30:1:30;
h=2*fc*sinc(n*2*fc);
%w=hamming(41);
%ht=w.*h';
[H,W]=freqz(h);
figure,plot(W/(2*pi),20*log10(abs(H)));
grid on;
xlabel('Normalized Frequency')
ylabel('Magnitude (dB)')
%the attenuation of the first oscillatory peak in the stopband is
%approximately same as the first one
%%
fc=0.3;
fs=0.5*2;
n=-40:1:40;
h=2*fc*sinc(n*2*fc);
%w=hamming(41);
%ht=w.*h';
[H,W]=freqz(h);
figure,plot(W/(2*pi),20*log10(abs(H)));
grid on;
xlabel('Normalized Frequency')
ylabel('Magnitude (dB)')
%the number of the attenuation increases but the amplitude of the fist
%osillatory peak hasn't changed.