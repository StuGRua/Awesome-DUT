%复合辛普森公式
clear

a=0; b=pi/6;    %积分上下界
n=6;            %区间数

% a=1; b=9;    %积分上下界    练习题
% n=4;            %区间数

syms x                 %定义变量x
f=(4-sin(x)^2)^0.5;    %定义函数表达式
% f=x^0.5;    %定义函数表达式   练习题

h=(b-a)/n;   %步长

for k=0:n    %求解节点坐标  xk代表子区间节点，xk1代表子区间中点
    xk(k+1)=a+k*h;
end

for k=0:n-1    %求解节点坐标  xk1代表子区间中点
    xk1(k+1)=xk(k+1)+1/2*h;
end

fa=subs(f,x,xk(1));
fb=subs(f,x,xk(n+1));

Sn=h/6*(fa+fb);       %积分累加初始值，matlab数组从1开始

for k=1:n             %对xk1累加
    fxk1=subs(f,x,xk1(k));
    Sn=Sn+2*h/3*fxk1;
end

for k=2:n             %对xk累加
    fxk=subs(f,x,xk(k));
    Sn=Sn+h/3*fxk;
end

vpa(Sn,7)           %结果取7位数字


