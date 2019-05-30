% LLT�ֽ� ��������10
clear

A=[1 1 3;1 3 7;3 7 18];     %ϵ������
b=[5; 11; 28];               %�Ҷ�����

[n,m]=size(A);         %��þ��������������,����n=m
L=eye(n,m);            %���ɳ�ʼL����
D=zeros(n,m);          %���ɳ�ʼD����
  
%��������L,D����

for i=1:n 

    
    for j=1:i-1
        L(i,j)=A(i,j);
        for k=1:j-1
            L(i,j)=L(i,j)-D(k,k)*L(i,k)*L(j,k);
        end
        L(i,j)=L(i,j)/D(j,j);
    end
    
    D(i,i)=A(i,i);
    for k=1:i-1
        D(i,i)=D(i,i)-D(k,k)*L(i,k)^2;
    end
    
end
    

%�ⷽ�̲���
y=L\b;                       
x=L'\(inv(D)*y)                      


 
