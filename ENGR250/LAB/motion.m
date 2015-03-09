function ydot = motion( t,y )
%MOTION Summary of this function goes here
%   Detailed explanation goes here
    global b k m
    x = y(1);
    v = y(2);
    
    ydot(1,1) = v;
%     ydot(2,1) = (-b*v*k*x)/m; 
    ydot(2,1) = (-b*v^2*sign(v)-m*9.81)/m;
end

