x=1:4;
y=[2 2.5 3.4 4];
n=length(x);
A1=ones(n,1);
A2=x';
A=[A1 A2];
p=(A'*A)\A'*y';
%���⻬����
%plot(x,y,'o',x,y);
%�⻬����
tx=1:0.05:4;
ty=10.^p(1)+tx.^p(2);
plot(x,y,'o',tx,ty);