function J = cannonjacob( x, v0, t1, theta1, theta2)
%CANONJACOB Summary of this function goes here
%   Detailed explanation goes here
            % Respect to v_1 | v_2 | t_2 | t_f
            
            J = [   
                sind(theta1).*t1, 0, cosd(theta1).*t1, 0;
                -sind(theta2).*x(3), sind(theta2).*x(3), cosd(theta2).*x(3),  cosd(theta2).*x(3);
                -x(2).*sind(theta2) + 9.81.*x(3), x(2).*sind(theta2) - 9.81.*x(3), x(2).*cosd(theta2), x(2).*cosd(theta1);
                0, -v0 + 9.81.*x(4), 0, 0
                ];
              
               
end

