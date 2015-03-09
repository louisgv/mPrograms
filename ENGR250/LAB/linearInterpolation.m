function yTest = linearInterpolation( x , y , xTest)
%LINEARINTERPOLATION Summary of this function goes here
%   Detailed explanation goes here
    %0:10:100 0:1:100
   yTest = zeros(size(xTest));
   for i = 1:length(xTest)
        for j = 1:length(x)
            if xTest(i) < x(j) %20 => 
                upper = j;
                lower = j-1;
%                 display(i);
                break;
            end
        end
        slope = (y(upper) - y(lower))/(x(upper)-x(lower));
        
        y0 = y(upper) - slope*x(upper);
        
        yTest(i) = slope*xTest(i) + y0;
    end
end

