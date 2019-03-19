load gong.mat;
soundsc(y,Fs);
figure,specgram(y,[],Fs);
pause(5);

a=[-0.2427,-0.2001,0.7794,-0.2001,-0.2427];
z=conv(y,a);
soundsc(z,Fs);
figure,specgram(z,[],Fs);
%In my view, the parts of the signal which are unfamiliar with the a
%function will be removed. In other words, it will remove the lower level
%of the signal.