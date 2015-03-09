function set3()
% Set 3 ----------------------------------------------
% Stiff ODE
% The following second-order ODE is considered to be stiff.
% d^2y/dx^2 = -2001 dy/ dx - 2000.5y


% With 'ode45' command and the initial condition y(0) = 1 and y0(0) = 0,
% - Save the y(t) (0 5 t 5 10) on HW6 5.dat file
% - Save the y_(t) (0 5 t 5 10) on HW6 6.dat file


% With 'ode23s' command and the initial condition y(0) = 1 and y0(0) = 0,
% - Save the y(t) (0  t  10) on HW6 7.dat file
% - Save the y_(t) (0  t  10) on HW6 8.dat file


HW6_5 = fdoubleprime(f, dx);
HW6_6 = fprime(f, dx, 4);

HW6_7 = trapzsum( 0 , pi, f, 1);
HW6_8 = trapzsum( 0 , pi, f, 1);

save HW6_5.dat HW6_5 -ascii;
save HW6_6.dat HW6_6 -ascii;

save HW6_7.dat HW6_7 -ascii;
save HW6_8.dat HW6_8 -ascii;

end

