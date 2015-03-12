function set1()
% Set 1 ----------------------------------------------
% ODE IVP
% Solve the following diferential equation from t = 0 to 3:
% dy/dt = -10:8y
% with the initial condition of y(0) = 1.

dy = @ (t,y) -10.8*y;

[t, y] = ode45 (dy, [0,3], 1);

HW6_1 = y;

plot (t, y,'-.k', t, exp(-10.8*t), '--r');

% - save y(t); 0 < t < 5 on HW6 1.dat file

save HW6_1.dat HW6_1 -ascii;

end

