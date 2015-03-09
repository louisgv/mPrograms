function fdd = fdoubleprime( f, dx, ~ )
%FDOUBLEPRIME Second Derivative Approximation
%   Detailed explanation goes here
    n = length(f);
    fdd = zeros(size(f));
    fdd(1)=  (2*f(1) - 5*f(2) + 4*f(3)-f(4))/dx^2;
        for i=2:n-1
            fdd(i) = (f(i+1)-2*f(i) + f(i-1))/dx^2; 
        end
    fdd(n)=  (2*f(n) - 5*f(n-1) + 4*f(n-2)-f(n-3))/dx^2;
end

