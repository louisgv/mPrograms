function E = exponentmin(x)
%EXPONENTMIN Summary of this function goes here
%   Detailed explanation goes here
    global datax datay
    
    A = x(1);
    B = x(2);
    
    E = 0;
    
    for i = 1:length(datax)
        E = E + (datay(i) - real(A*(datax(i).^B)))^2;
    end

end

