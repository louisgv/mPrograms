function J = cannonjacob( x, v_0, t_1, theta_1, theta_2)
%CANONJACOB Summary of this function goes here
%   Detailed explanation goes here
    
            % Respect to v_1 | v_2 | t_2 | t_f
    J = [   sind(theta_1).*t_1, -sind(theta_2).*x(3), -x(2).*sind(theta_2) + 9.81.*x(3), 0;
            
            0 , sind(theta_2).*x(3) , x(2).*sind(theta_2) - 9.81.*x(3), -v_0 + 9.81.*x(4);
            
            cosd(theta_1).*t_1 , -cosd(theta_2).*x(3), -x(2).*cosd(theta_2) ,0;
            
            0, cosd(theta_2).*x(3), x(2).*cosd(theta_1), 0];
        
end

