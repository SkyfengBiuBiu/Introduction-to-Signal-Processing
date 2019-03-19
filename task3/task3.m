%%
%q1
delta=[zeros(1,7),1,zeros(1,7)];
n=-7:7;
stem(n',delta);

%%
%q2
delta=[zeros(1,7),ones(1,8)];
n=-7:7;
stem(n',delta);

%%
%q3
delta=[zeros(1,7),0:7];
n=-7:7;
stem(n',delta);
%%
%q4
n=-7:7;
delta=(1.5).^n;
stem(n',delta);


