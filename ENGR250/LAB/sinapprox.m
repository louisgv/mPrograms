function y = sinapprox(x,n)
    y = 0;
    for i = 0:(n-1)
       y = y + ((-1).^i)/factorial(2.*i+1)*x.^(2.*i+1);
    end