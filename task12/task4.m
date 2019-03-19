projected_u1=dot(w,u1);
projected_u2=dot(w,u2);

c=(projected_u1+projected_u2)/2;
count=0;
for i=1:length(X1)
    if (dot(X1(i,:),w)>=c)
        count=count+1;
    end
end

count1=0;
for j=1:length(X2)
    if (dot(X2(j,:),w)<c)
        count1=count1+1;
    end
end

precentage=(count+count1)/(length(X1)+length(X2))