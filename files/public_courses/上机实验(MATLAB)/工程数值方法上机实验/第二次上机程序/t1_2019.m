%拉格朗日插值
x=[1 2 3 4 5 6]; 
y=[16 18 21 17 15 12];
u=1:0.05:6;
m=length(x);
n=length(u);
v=zeros(size(u));
for i= 1:m
    w=ones(size(u));
    for j= [1:i-1 i+1:m]
        w=((u-x(j))./(x(i)-x(j))).*w;
    end
    v=v+w*y(i);
end
plot(x,y,'o',u,v,'-');