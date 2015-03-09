function J = jacobian( x )
%JACOBIAN Summary of this function goes here
%   Detailed explanation goes here

    J = [   3*x(1)^2 + x(2), 2*x(2) + x(1);
        
            2*x(1)*exp(x(2)), x(1)^2*exp(x(2))];
    
end

