% LLT分解 第五章例10
clear

A=[1 1 3;1 3 7;3 7 18];     %系数矩阵
b=[5; 11; 28];               %右端向量

[n,m]=size(A);         %获得矩阵的行数和列数,方阵n=m
L=eye(n,m);            %生成初始L矩阵
D=zeros(n,m);          %生成初始D矩阵
  
%按列生成L,D矩阵

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
    

%解方程部分
y=L\b;                       
x=L'\(inv(D)*y)                      


 
