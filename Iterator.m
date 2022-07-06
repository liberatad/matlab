function p = Iterator(x0,eps,funIte)
a = x0;
b = funIte(x0);
while(abs(a - b) >= eps)
    a = b;
    b = funIte(b);
end
p = a;
end