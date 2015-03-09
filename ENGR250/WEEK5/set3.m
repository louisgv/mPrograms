function set3()
% Set 3 ----------------------------------------------
% Use the MatLab commands 'trapz' and 'quad' to evaluate integrals. The normal
% distribution is defined as

% f(x) = 1/ sqrt(2pi)exp(-x^2/2)

% With 'trapz' command, make following dat Files and submit them.
% - save the integration -1  x  1 and x = 0:05 on HW5 13.dat File
% - save the integration -2  x  2 and x = 0:05 on HW5 14.dat File

dx = 0.05;
x1 = -1:dx:1;
x2 = -2:dx:2;
f = @(x) exp(-x.^2/2)/sqrt(2*pi);

HW5_13 = trapz (x1, f(x1));
HW5_14 = trapz (x2, f(x2));

% With 'quad' command, make following dat Files and submit them.
% - save the integration -1  x  1 on HW5 15.dat File
% - save the integration -2  x  2 on HW5 16.dat File

HW5_15 = quad (f, -1, 1);
HW5_16 = quad (f, -2, 2);

% With 'quadl' command, make following dat Files and submit them.
% - save the integration -1  x  1 on HW5 17.dat File
% - save the integration -2  x  2 on HW5 18.dat File

HW5_17 = quadl (f, -1, 1);
HW5_18 = quadl (f, -2, 2);

save HW5_13.dat HW5_13 -ascii;
save HW5_14.dat HW5_14 -ascii;

save HW5_15.dat HW5_15 -ascii;
save HW5_16.dat HW5_16 -ascii;

save HW5_17.dat HW5_17 -ascii;
save HW5_18.dat HW5_18 -ascii;

end

