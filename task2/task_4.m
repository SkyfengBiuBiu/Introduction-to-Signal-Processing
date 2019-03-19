x=1790:10:2000;
disp(['The value of year is',num2str(x)]);
d=x-1913.25;
P=197273000./(1+exp(-0.03134*d));
disp(['The value of population is',num2str(P)]);
scatter(x,P);
hold("on");
plot(x,P);
