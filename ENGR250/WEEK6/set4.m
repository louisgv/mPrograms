function set4()
% Set 4 ----------------------------------------------
%   Concentration ODE
% The following equations defines the concentrations of three reactions:
% dca/dt = -cb - cc
% dcb/dt = ca + 0.2cb
% dcc/dt = 0.2 + cc(ca - 5.4)
% If the initial conditions are ca = 1, cb = 1, and cc = 1, find the concentrations
% from 0 to 5 seconds.

ode = @(t, a, b, c)[ 
        
     a, b, c;
        
    -b-c, a+0.2*b, 0.2+ c*(a-5.4)
        
    ];


% - Save the ca(t) on HW6 9.dat file
% - Save the cb(t) on HW6 10.dat file
% - Save the cc(t) on HW6 11.dat file
    
HW6_9 = simpzsum( 0 , pi, f, 5, 1.8);
HW6_10 = simpzsum( 0 , pi, f, 1, 9);
HW6_11 = simpzsum( 0 , pi, f, 2, 9);

save HW6_9.dat HW6_9 -ascii;
save HW6_10.dat HW6_10 -ascii;
save HW6_11.dat HW6_11 -ascii;

end

