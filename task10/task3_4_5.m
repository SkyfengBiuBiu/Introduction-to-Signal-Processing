fp=9*1000;
fs=12.5*1000;
Rp=0.4;
Rs=25;
Fs=32*1000;

[N,D] = design_lowpass(fp, fs, Rp, Rs, Fs);

figure,zplane(N,D);
figure,freqz(N,D);

%%
fp=9*1000;
fs=12.5*1000;
Rp=0.4;
Rs=25;
Fs=32*1000;
Wp=fp/Fs;
Ws=fs/Fs;

[N,Wn]=buttord(2*Wp,2*Ws,Rp,Rs);
[a,b]=butter(N,Wn);
 figure,impz(a,b);
 figure,freqz(a,b);
 [z,p,K] = butter(N,Wn);
 figure,zplane(z,p)