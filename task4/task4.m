load seiska.mat;

F=16384;
soundsc(x,F);
pause(2);
figure,specgram(x,[],F);

y=x(1:2:length(x));
F=8192;
soundsc(y,F);
figure,specgram(y,[],F);
pause(2);

r=2;
z= decimate(x,r);
soundsc(z,F);
figure,specgram(z,[],F);
pause(2);