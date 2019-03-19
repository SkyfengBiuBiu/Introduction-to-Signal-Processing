clear;
load seiska.mat;
soundsc(x,16384);
figure,specgram(x,[],16384);
pause(3);

filename = 'hall.wav';
[y,Fs] = audioread(filename);
figure,specgram(y,[],16384);
z=conv(x,y);
soundsc(z,16384);

