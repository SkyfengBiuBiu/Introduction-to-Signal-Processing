fc=((15+18)/2)/44.1;
f=(18-15)/44.1;
N=ceil(3.1/f);
if N%2==0
    N=N+1;
end
n=-(N-1)/2:(N-1)/2;
w=hanning(N);
h=-2*fc*sinc(n*2*fc);
ht=w.*h';
ht((N-1)/2+1)=1-2*fc;
figure,impz(ht);


ht1= fir1 (N-1, 2*fc, 'high', barthannwin(N));
figure,impz(ht1);