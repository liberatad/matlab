function p = Gauss_Seide(A,b,n,x0,eps)
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
x1 = -inv(D + L) * U * x0 + (D + L)\b;
while(max(abs(x1 - x0)) >= eps)
    x0 = x1;
    x1 = -inv(D+L)*U*x0 + (D+L)\b;
end
p = x0;
end