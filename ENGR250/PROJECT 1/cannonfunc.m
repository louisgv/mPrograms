function cannon = cannonfunc( x, v_0, t_1, theta_1, theta_2,d)
%CANNONFUNC Summary of this function goes here
%   Detailed explanation goes here

    cannon = [  x(1).*sind(theta_1).*t_1 - 4.905.*t_1.^2 - x(2).*sind(theta_2).*x(3) + 4.905.*x(3).^2;
                x(2).*sind(theta_2).*x(3) - 4.905.*x(3).^2 - v_0.*x(4) + 4.905.*x(4).^2;
                x(1).*cosd(theta_1).*t_1 - 2*d - x(2).*cosd(theta_2).*x(3);
                x(2).*cosd(theta_2).*x(3) + d
                ];
            
end

