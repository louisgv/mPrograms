function F = fineVector( x )
%FINEVECTOR Summary of this function goes here
%   Detailed explanation goes here
    
    F =  [  x(1)^3 + x(2)^2 + x(1) * x(2) - 8;
        x(1)^2 * exp(x(2)) - 7];

end

