function set2()
% Set 2 ----------------------------------------------
% Pendulum ODE
% Consider a pendulum of length l moving in the xy plane. 
% The pendulum is fixed with a pin on one end and 
% a mass at the other. 
% Note that g = 9:81m=s2 and l = 5:5m. 

g = 9.81;
l = 5.5;

% The diferential equation governing its motion 
% is given by
% r'' +g/l sin(r) = 0 

ode_true = @(t, theta)[ 
        
     theta(2);
        
    -g/l*sin(theta(1))
        
    ];

% In a class in ODEs, this equation is typically 
% linearized to the following result so that 
% an analytical solution can be obtained
% r'' + g/l r = 0

ode_lineear = @(t, theta)[ 
            
        theta(2);

        -g/l*theta(1)
        
        ];

% But this is a class in numerical methods! 
% We are not hindered by such petty obstacles. 
% Solve the system using both diferential equations 
% and compare the results. 

% Let r(0)= pi/2 and r'(0) = 0 in both cases.


% - Save true(t), the solution for the 
% true DifEQ 0  t  10 on HW6 2.dat

[t, ytrue] = ode45 (ode_true, [0 10], [pi/2 0]);
HW6_2 = ytrue(:,1);

% - Save linear(t), the solution for the 
% linear DifEQ 0  t  10 on HW6 3.dat

[tlinear, ylinear] = ode45 (ode_lineear, [0 10], [pi/2 0]);
HW6_3 = ylinear(:,1);

% - Calculate the diference, 
% true(t) -linear(t), and save the vector on HW6 4.dat.

linearInterp = interp1(tlinear, HW6_3, t);

HW6_4 = HW6_2 - linearInterp;

% Use linear interpolation of linear(t) if necessary.
% Also, while it won't be graded, you should graph both 
% to see how diferent the linear approximation is 
% from the true solution.

% plot (t, ytrue(:,1),'-k', tlinear, ylinear(:,1), ':r',t, linearInterp(:,1), '.b');

save HW6_2.dat HW6_2 -ascii;
save HW6_3.dat HW6_3 -ascii;
save HW6_4.dat HW6_4 -ascii;

end

