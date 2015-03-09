function [ A, b ] = leastsqrtln( x, y )
%leastsqrtln Calculate Linear Least Square Regression
%   Does something

    A = zeros(2,2);

    b = zeros(2,1);
    
    for i = 1:length(x)
        A(1,1) = x(i)^2 + A(1,1);
        A(1,2) = x(i) + A(1,2);
        A(2,1) = x(i) + A(2,1);
        A(2,2) = 1 + A(2,2);

        b(1,1) = x(i) * y(i) + b(1,1);
        b(2,1) = y(i) + b(2,1);
    end

end

