%复合梯形公式
clear

a=0; b=pi/6;    %积分上下界
n=6;            %区间数

% a=1; b=9;    %积分上下界    练习题
% n=4;            %区间数

syms x                 %定义变量x
f=(4-sin(x)^2)^0.5;    %定义函数表达式
% f=x^0.5;    %定义函数表达式   练习题

h=(b-a)/n;   %步长

for k=0:n              %求解节点坐标 xk代表子区间节点
    xk(k+1)=a+k*h;      
end

fa=subs(f,x,xk(1));
fb=subs(f,x,xk(n+1));

Tn=h/2*(fa+fb);       %积分累加初始值，matlab数组从1开始

for k=2:n    
    fxk=subs(f,x,xk(k));
    Tn=Tn+h*fxk;
end

vpa(Tn,7)          %结果取7位数字



