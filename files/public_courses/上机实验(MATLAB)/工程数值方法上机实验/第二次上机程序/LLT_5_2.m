% LLT分解 第五章例9
clear

A=[1 1 2;1 2 0;2 0 11];     %系数矩阵
b=[5; 8; 7];               %右端向量

[n,m]=size(A);        %获得矩阵的行数和列数,方阵n=m
L=zeros(n,m);          %生成初始L矩阵
  
%生成L矩阵
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

%解方程部分
y=L\b;
x=L'\y


 
