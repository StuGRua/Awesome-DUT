%��������ɭ��ʽ
clear

a=0; b=pi/6;    %�������½�
n=6;            %������

% a=1; b=9;    %�������½�    ��ϰ��
% n=4;            %������

syms x                 %�������x
f=(4-sin(x)^2)^0.5;    %���庯�����ʽ
% f=x^0.5;    %���庯�����ʽ   ��ϰ��

h=(b-a)/n;   %����

for k=0:n    %���ڵ�����  xk����������ڵ㣬xk1�����������е�
    xk(k+1)=a+k*h;
end

for k=0:n-1    %���ڵ�����  xk1�����������е�
    xk1(k+1)=xk(k+1)+1/2*h;
end

fa=subs(f,x,xk(1));
fb=subs(f,x,xk(n+1));

Sn=h/6*(fa+fb);       %�����ۼӳ�ʼֵ��matlab�����1��ʼ

for k=1:n             %��xk1�ۼ�
    fxk1=subs(f,x,xk1(k));
    Sn=Sn+2*h/3*fxk1;
end

for k=2:n             %��xk�ۼ�
    fxk=subs(f,x,xk(k));
    Sn=Sn+h/3*fxk;
end

vpa(Sn,7)           %���ȡ7λ����


