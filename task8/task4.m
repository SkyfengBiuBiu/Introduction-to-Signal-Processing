t=0:1/8192:4;
y=chirp(t,0,1,1000);
soundsc(y);
figure,specgram(y);

%%
y1=filter([0.0675 0.1349 0.0675],[1 -1.143 0.4128],y);
soundsc(y1);
figure,specgram(y1);
figure,freqz([0.0675 0.1349 0.0675],[1 -1.143 0.4128]);
