%最小二乘
x=37:43;
y=[3.4 3 2.1 1.53 1.80 1.9 2.9];
n=length(x);
A1=ones(n,1);
A2=x';
A3=x'.^2;
A=[A1 A2 A3];
p=(A'*A)\A'*y';
%不光滑曲线
%plot(x,y,'o',x,y);
%光滑曲线
tx=37:0.05:43;
ty=p(1)+p(2)*tx+p(3)*tx.^2;
plot(x,y,'o',tx,ty);