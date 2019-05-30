% LU分解 第五章例8

A=[1 2 3;1 3 5;1 3 6];     %系数矩阵
b=[2; 4; 5];               %右端向量

% A=[1/4 1/5 1/6;1/3 1/4 1/5;1/2 1 2];     %系数矩阵
% b=[9; 8; 8];               %右端向量

[n,m]=size(A);       %获得矩阵的行数和列数,方阵n=m
U=zeros(n,m);        %生成初始U矩阵
L=eye(n,m);          %生成初始L矩阵
  
%U按行生成
U(1,:)=A(1,:);             %第1行

%按列生成L矩阵
L(1:n,1)=A(1:n,1)/U(1,1);  %第1列

for k=2:n                  %第2到最后一行
     for j=k:n
         U(k,j)=A(k,j);
         for r=1:k-1
             U(k,j)=U(k,j)-L(k,r)*U(r,j);
         end
     end

     for i=k:n
         L(i,k)=A(i,k);
         for r=1:k-1
             L(i,k)=L(i,k)-L(i,r)*U(r,k);
         end
         L(i,k)=L(i,k)/U(k,k);
     end
end

%解方程部分
y=L\b;
x=U\y


 
