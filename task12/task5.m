imOrig = imread('canoe.jpg');
imshow (imOrig, []);

[x1,y1] = ginput(1);
[x2,y2] = ginput(1);
window1 = imOrig(y1-3:y1+3, x1-3:x1+3,:);
window2 = imOrig(y2-3:y2+3, x2-3:x2+3,:);
X1 = double(reshape(window1, 49, 3))';
X2 = double(reshape(window2, 49, 3))';

%task3
C1=cov(X1');
C2=cov(X2');
u1=mean(X1,2);
u2=mean(X2,2);
u=u1-u2;
C=inv(C1+C2);
w=C*u;

%task4->c
projected_u1=dot(w,u1);
projected_u2=dot(w,u2);

threshold=(projected_u1+projected_u2)/2;
imGray = w(1)*double(imOrig(:,:,1))+w(2)*double(imOrig(:,:,2))+w(3)*double(imOrig(:,:,3));
imshow(imGray > threshold, []);