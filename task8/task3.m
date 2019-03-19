%pole
a=[1 -0.9170 0.0540 -0.2410 0.1990];
%zero
b=[0.0122 0.0226 0.0298 0.0204 0.0099];

subplot(311);
zplane(b,a);

n=-100:100:1;
subplot(312);
[h,w]=freqz(b,a);
plot(w/(2*pi),20*log10(h));
[h1,t] = impz(b,a);
subplot(313);
stem(t,h1);

%%
subplot(311);
zplane(a,b);

n=-100:100:1;

[h2,w1] = freqz(a,b);
subplot(312);
plot(w1/(2*pi),20*log10(h2));
subplot(313);
[h3,t2] = impz(a,b);
stem(t2,h3);
