%�������ι�ʽ
clear

a=0; b=pi/6;    %�������½�
n=6;            %������

% a=1; b=9;    %�������½�    ��ϰ��
% n=4;            %������

syms x                 %�������x
f=(4-sin(x)^2)^0.5;    %���庯�����ʽ
% f=x^0.5;    %���庯�����ʽ   ��ϰ��

h=(b-a)/n;   %����

for k=0:n              %���ڵ����� xk����������ڵ�
    xk(k+1)=a+k*h;      
end

fa=subs(f,x,xk(1));
fb=subs(f,x,xk(n+1));

Tn=h/2*(fa+fb);       %�����ۼӳ�ʼֵ��matlab�����1��ʼ

for k=2:n    
    fxk=subs(f,x,xk(k));
    Tn=Tn+h*fxk;
end

vpa(Tn,7)          %���ȡ7λ����



