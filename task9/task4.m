

load("number.mat");




N=98;
% n=-N/2:N/2;
% fp=0.33/1;
% fs=0.36/1;
% fc=(fs+fp)/2;
% h=-2*fc*sinc(n*2*fc);
% [H,W]=freqz(h);
% figure,plot(W/(2*pi),20*log10(abs(H)));
% grid on;
% xlabel('Normalized Frequency')
% ylabel('Magnitude (dB)')


f=firpm(98, [0,0.33,0.36,1], [0, 0,1, 1]);
[H,W]=freqz(f);



y = filter(f,1,secret);

sound(secret);
pause(5);
sound(y);

subplot(211);
specgram(secret);

subplot(212);
specgram(y);

figure,freqz(f);
grid on;
xlabel('Normalized Frequency');
ylabel('Magnitude (dB)');

