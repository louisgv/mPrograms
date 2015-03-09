function E2 = minimumtest( x )
%MINIMUMTEST Summary of this function goes here
%   Detailed explanation goes here
    global datax datay
    
    A = x(1);
    B = x(2);
    C = x(3);
    
    E2 = 0;
    
    for i = 1:length(datax)
%         E2 = E2 + (datay(i) - (A*datax(i)+B))^2;
        E2 = E2 + (datay(i) - real(A*(datax(i)-B)^C))^2;
    end
end

