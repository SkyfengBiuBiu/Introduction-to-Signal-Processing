x=1790:10:2000;
disp(['The value of year is',num2str(x)]);

population(x);
disp(['The value of population is',num2str(P)]);
plot(x,P);
%yes, the population reaches a "steady state in the  end"

a=1790;
while((population(a)~=population(a+1)))
    a=a+1;
end

disp(['*****The value of year is****',num2str(a)]);