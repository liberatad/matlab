function elimination(A,m,n)%这里需要一个消元的函数，便于中间计算
for k = m:n-1%表示一共需要n-1次循环
    for i = k+1 : n
        A(i,k) = A(i,k)/A(k,k);%用aik来存储每次每次消元的系数
        for j = k+1 : n+1%这里只用考虑矩阵的上三角
            A(i,j) = A(i,j) - A(i,k) * A(k,j);
        end
    end
end
end