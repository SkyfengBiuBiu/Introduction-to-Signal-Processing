%%
%(a)
A1=1:100;
A=reshape(A1,10,10)';

%%
%(b)
E=A.^3;

%%
%(c)
F=A^3;
H=mpower(A,3);

%%
%(d)
B=rand([10,10]);

%%
%(e)
C=inv(B);
I=B*C;

