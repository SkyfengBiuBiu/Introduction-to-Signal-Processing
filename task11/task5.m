
subplot(311);
specgram(x,[],Fs*2);
soundsc(x,Fs*2);

pause(8);
x1=filter(fir1(100,1/3),1,x);
subplot(312);
specgram(x1,[],Fs*2);
soundsc(x1,Fs*2);

pause(8);
x2=x1(1:3:end);
subplot(313);
specgram(x2,[],Fs*2/3);
soundsc(x2,Fs*2/3);