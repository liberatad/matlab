function p = Jacobi(A,b,n,x0,eps)%A是n阶方阵，b是常数向量,x0是迭代初始值
%预先分配内存及初始化
D = zeros(n,n);
L = zeros(n,n);
U = zeros(n,n);
%赋值
for i = 1 : n
    D(i,i) = A(i,i);
end
for i = 1 : n-1
    for j = i+1 : n
        U(i,j) = A(i,j);
    end
end
for i = 2 : n
    for j = 1 : i-1
        L(i,j) = A(i,j);
    end
end
x1 = zeros(n,1);
x1 = -inv(D) * (L + U) * x0 + D\b;
while(max(abs(x1 - x0)) >= eps)%这里取最大值采用了无穷范数
    x0 = x1;
    x1 = -inv(D) * (L+U) * x1 + D\b;
end
p = x0;
end