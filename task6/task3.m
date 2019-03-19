Ns=[8,16,32,64,128,256,512,1024];
elapsedTime1=[];
elapsedTime2=[];

for i=1:length(Ns);
    N=Ns(i);
F=exp(-2*pi*i*(0:N-1)'*(0:N-1)/N);

tic;
for k=1:100,X1=F*rand(N,1);end;
elapsedTime1(i)=toc;

tic;
for k=1:100,X2=fft(rand(N,1));end;
elapsedTime2(i) = toc;

end;

plot(Ns,elapsedTime1,"*-");
hold("on");
plot(Ns,elapsedTime2,"o-");
legend({"DFT","FFT"});