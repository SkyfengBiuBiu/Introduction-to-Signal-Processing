x=rand(1,8192);
h=0.05*[ones(1,20),zeros(1,8192-20)];
tic;
a=fft(x);
b=fft(h);
c=a.*b;
y1=ifft(c);
toc();
tic;
y2=conv(x,h);
toc();
plot((1:200),real(y1(1:200)),(1:200),y2(1:200));

