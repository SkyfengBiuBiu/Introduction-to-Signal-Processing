[b,a]=filter(1,[1 0.9],delta);
figure,impz(b,a);

[b1,a1]=filter([0.2 -0.5 0.8],[1 -0.6 0.3],delta);
figure,impz(b1,a1);

[b2,a2]=filter([1 0.5 0.25],[1 -0.5 -0.6],delta);
figure,impz(b2,a2);

%%
b=[1];
a=[1 0.9];
figure,impz(b,a);

b1=[0.2 -0.5 0.8];
a1=[1 -0.6 0.3];
figure,impz(b1,a1);

b2=[1 0.5 0.25];
a2=[1 -0.5 -0.6];
figure,impz(b2,a2);