% LLT�ֽ� ��������9
clear

A=[1 1 2;1 2 0;2 0 11];     %ϵ������
b=[5; 8; 7];               %�Ҷ�����

[n,m]=size(A);        %��þ��������������,����n=m
L=zeros(n,m);          %���ɳ�ʼL����
  
%����L����
for i=1:n 
    L(i,i)=A(i,i);
    for k=1:i-1
        L(i,i)=L(i,i)-L(i,k)^2;
    end
    L(i,i)=L(i,i)^0.5;

    for j=i+1:n
        L(j,i)=A(j,i);
        for k=1:i-1
            L(j,i)=L(j,i)-L(j,k)*L(i,k);
        end
        L(j,i)=L(j,i)/L(i,i);
    end
end

%�ⷽ�̲���
y=L\b;
x=L'\y


 
