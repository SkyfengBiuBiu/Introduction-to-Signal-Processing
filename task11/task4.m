load laughter;
soundsc(y);
subplot(311);
specgram(y,[],Fs);
pause(8);

z=zeros(2*length(y),1);
z(1:2:end)=y;
subplot(312);
specgram(z,[],Fs*2);
soundsc(z,Fs*2);

pause(8);
x=2*filter(fir1(100,1/2),1,z);
subplot(313);
specgram(x,[],Fs*2);
soundsc(x,Fs*2);
