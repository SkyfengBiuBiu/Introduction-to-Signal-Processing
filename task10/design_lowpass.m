function [N,D] = design_lowpass(fp, fs, Rp, Rs, Fs)

Wp=(fp/Fs)*2*pi;
Ws=(fs/Fs)*2*pi;

c=power(tan(Wp/2),-1);

Op=1;
Os=c*tan(Ws/2);

sc=sqrt(power(10,Rp/10)-1);
A=sqrt(power(10,Rs/10));

m1=log10((power(A,2)-1)/power(sc,2));
m2=2*log10(Os);
M=ceil(m1/m2);


for k=1:M
    pp=exp(pi*i*(1/2+(2*k-1)/(2*M)));
P(k)=power(power(sc,1/M),-1)*pp;
end

P1=(1+P./c)./(1-P./c);

%z=-1*ones(length(M),1);
z=[-1;-1;-1;-1;-1];
K=1;%0.1397
[N,D] = zp2tf(z,P1,K);
K=sum(N)/sum(D);
N=N/K;




