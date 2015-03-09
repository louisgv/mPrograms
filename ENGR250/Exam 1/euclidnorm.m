function ed = euclidnorm( x )
%UNTITLED Summary of this function goes here
%   The Euclidean Norm has a nice Wikipedia page. 
     ed = 0;
     for i=1:length(x)
        ed = ed + x(i)^2;
     end
     
     ed = ed^(1/2);
     
end

