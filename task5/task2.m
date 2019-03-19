delta=[zeros(1,7),ones(1,50)];
n=-7:49;
y=filter(1,[1 -1.1],delta);
stem(n',y);