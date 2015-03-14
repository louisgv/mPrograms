function set4()
% Set 4 ----------------------------------------------
%   Concentration ODE
% The following equations defines the concentrations of three reactions:
% dca/dt = -cb - cc
% dcb/dt = ca + 0.2cb
% dcc/dt = 0.2 + cc(ca - 5.4)
% If the initial conditions are ca = 1, cb = 1, and cc = 1, find the concentrations
% from 0 to 5 seconds.

ode = @(t, y)[ 
           
    -y(2)-y(3);
    y(1)+0.2*y(2);
    0.2 + y(3)*(y(1)-5.4);
        
    ];


% - Save the ca(t) on HW6 9.dat file
% - Save the cb(t) on HW6 10.dat file
% - Save the cc(t) on HW6 11.dat file

[t, solution] = ode45( ode, [0 5], [1 1 1]);

HW6_9  =    solution(:,1);
HW6_10 =    solution(:,2);
HW6_11 =    solution(:,3);

% plot (t, HW6_9,'-k', t, HW6_10, ':r',t, HW6_11, '.b');

save HW6_9.dat HW6_9 -ascii;
save HW6_10.dat HW6_10 -ascii;
save HW6_11.dat HW6_11 -ascii;

end

