function F = cannonfunc( x, v0, t1, theta1, theta2,d)
%CANNONFUNC Summary of this function goes here
%   Detailed explanation goes here
% v1=x(1);
% v2=x(2);
% t2=x(3);
% t0=x(4):

    F = [  x(1).*sind(theta1).*t1 - 4.905.*t1.^2 - x(2).*sind(theta2).*x(3) + 4.905.*x(3).^2;
           x(2).*sind(theta2).*x(3) - 4.905.*x(3).^2 - v0.*x(4) + 4.905.*x(4).^2;
           x(1).*cosd(theta1).*t1 - 2*d - x(2).*cosd(theta2).*x(3) ;
           x(2).*cosd(theta2).*x(3) + d
         ];   
end
