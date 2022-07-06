function p = AMainEle(A,n)
temp = zeros(1,n);
z = zeros(1,n);
for p = 1 : n-1
for i = p : n-1
    max = A(i,i);%用于存储最大值
    k = 0;%用于记录列数
    l = 0;%用于记录行数
    for j = i : n
        if(abs(A(i,i)) >= abs(max))
            max = A(i,i);
            l = i;
            k = j;
        end
    end
end
z(k) = p;
for j = 1 : n
    temp(j) = A(p,j);
    A(p,j) = A(l,j);
    A(l,j) = temp(j);
end
for i = 1 : n
    temp(i) = A(i,p);
    A(i,p) = A(i,k);
    A(i,k) = temp(i);
end
elimination(A,p,n);
end
p = zeros(1,n);
for i = 1 : n
    p(i) = A(z(i),n+1);
end
end