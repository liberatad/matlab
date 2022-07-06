function p = binary(a,b,fun,eps)
while(abs(a - b) >= eps)
    mid = (a + b)/2;
    if(fun(a) * fun(mid) < 0)
        b = mid;
    else
        a = mid;
    end
end
p = (a + b) / 2;
end