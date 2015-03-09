function theta = anglebetween( A, B )
%ANGLEBETWEEN Summary of this function goes here
%   accepts two 3-element vectors and returns the angle, in degrees
%   acosd, which is the inverse cosine in degrees.
    
    if (size(A) >3) % Only size 3 Allowed
        theta = 0;
    else
        AdotB = A*B';
        magA = sqrt (sum(A.^2));
        magB = sqrt (sum(B.^2));
        theta = acosd (AdotB/(magA*magB));
    end
end

