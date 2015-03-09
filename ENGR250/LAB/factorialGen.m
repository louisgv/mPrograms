function y = factorialGen(x)
    fact = 1:(x+1);
    for i = 1:x
        fact(i) = fact(i-1) * x;
    end