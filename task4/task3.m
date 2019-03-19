f=1000;
Fs=8192;
n=1:8192;
S=sin((2*pi*n*f)/Fs);
soundsc(S);
figure,specgram(S,[],Fs);
pause(2);

f=2000;
S=sin((2*pi*n*f)/Fs);
soundsc(S);
figure,specgram(S,[],Fs);
pause(2);

f=3000;
S=sin((2*pi*n*f)/Fs);
figure,specgram(S,[],Fs);
soundsc(S);
pause(2);

%If I exceed the Nyquist limit,the aliasing would occur.