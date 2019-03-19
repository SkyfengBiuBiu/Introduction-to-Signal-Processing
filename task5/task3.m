delta=[1,zeros(1,127)];
n=0:127;
y1=filter(1,[1 0.9],delta);
figure,stem(n',y1);
y2=filter([0.2 -0.5 0.8],[1 -0.6 0.3],delta);
figure,stem(n',y2);
y3=filter([1 0.5 0.25],[1 -0.5 -0.6],delta);
figure,stem(n',y3);

%The function in (c) is not stable for the response is not bounded for all
%the n in its scope

