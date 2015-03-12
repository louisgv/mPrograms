function set3()
% Set 3 ----------------------------------------------
% Stiff ODE
% The following second-order ODE is considered to be stiff.
% d^2y/dx^2 = -2001 dy/ dx - 2000.5y

ode = @(t, y)[ 
        
     y(2);
        
    -2001.*y(2)-2000.5.*y(1)
        
    ];

% With 'ode45' command and the initial condition y(0) = 1 and y'(0) = 0,
% - Save the y(t) (0 5 t 5 10) on HW6 5.dat file
% - Save the y'(t) (0 5 t 5 10) on HW6 6.dat file

[t45,y45] = ode45(ode,[0 10],[1 0]);
HW6_5 = y45(:,1);
HW6_6 = y45(:,2);

% With 'ode23s' command and the initial condition y(0) = 1 and y'(0) = 0,
% - Save the y(t) (0  t  10) on HW6 7.dat file
% - Save the y'(t) (0  t  10) on HW6 8.dat file

[t23,y23] = ode23s(ode,[0 10],[1 0]);
HW6_7 = y23(:,1);
HW6_8 = y23(:,2);

% plot (t45, y45(:,1),'--r', t23, y23(:,1), ':b');

save HW6_5.dat HW6_5 -ascii;
save HW6_6.dat HW6_6 -ascii;

save HW6_7.dat HW6_7 -ascii;
save HW6_8.dat HW6_8 -ascii;

end

