function p = Newton_interpolation(x,f,n)%这里n指的是0-n个值，故是n+1维矩阵
%这里x也是n+1维数组
dMatrix = zeros(n+1,n+1);
y = f(x);
%第一列赋值
for i = 1 : n+1
    dMatrix(i,1) = y(i);
end
for i = 2 : n+1
    for j = 2 : i
        dMatrix(i,j) = (dMatrix(i,j-1)-dMatrix(i-1,j-1))/(x(i)-x(i-(j-1)));
    end
end
p = zeros(1,n+1);
%dMatrix对角线上的值就是牛顿插值各项的系数，这里多项式最高为n阶
for i = 1:n+1
    p(i) = dMatrix(i,i);
end
end