load testdata_fisher.mat;
plot(X1(:,1),X1(:,2),"ro",X2(:,1),X2(:,2),"g+");
C1=cov(X1);
C2=cov(X2);
u1=mean(X1);
u2=mean(X2);
u=u1-u2;
C=inv(C1+C2);
w=C*u';
hold("on");
a=w(2)/w(1);
b=a*u1(1)-u1(2);
x=[-6 6];
y=a*x-b;
line(x,y);
axis equal;