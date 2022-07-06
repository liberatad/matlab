function p = Gauss(A,n)%这里A是增广矩阵，n是增广矩阵的维数
%消元
for k = 1:n-1%表示一共需要n-1次循环
    for i = k+1 : n
        A(i,k) = A(i,k)/A(k,k);%用aik来存储每次每次消元的系数
        for j = k+1 : n+1%这里只用考虑矩阵的上三角
            A(i,j) = A(i,j) - A(i,k) * A(k,j);
        end
    end
end
%解方程
while(i >= 1)
    sum = 0;
    for j = i+1 : n
        sum = sum + (A(i,j) * A(j,n+1));
    end
    A(i,n+1) = (A(i,n+1)-sum)/A(i,i);
    i = i-1;
end
p = zeros(1,n);
for i = 1 : n
    p(i) = A(i,n+1);
end
end