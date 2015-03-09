function set4()
% Set 4 ----------------------------------------------
% Multi-Dimensional Interpolation

% Temperatures are measured at various points on a heated plate.
% 
% x = 0 x = 2 x = 4 x = 6 x = 8
% y = 0 100.00 90.00 80.00 70.00 60.00
% y = 2 85.00 64.45 53.56 48.15 50.00
% y = 4 70.00 48.90 38.43 35 40.00
% y = 6 55.00 38.79 30.39 27.27 30.00
% y = 8 40.00 35.00 30.00 25.00 20.00

% Make following dat f s and submit them using Matlab's interp2 command with
% the linear (default) option.
% - save the estimated temperature at x = 4:2, y = 3:3 on HW4 19.dat  
% - save the estimated temperature at x = 4:4, y = 2:8 on HW4 20.dat  
% - save the estimated temperature at x = 6:6, y = 5:7 on HW4 21.dat  
% - save the estimated temperatures with 0  x  8, 0  y  8, and
% x = y = 0:25 on HW4 22.dat

x = 0:2:8;
y = x;
t = [   100.00 90.00 80.00 70.00 60.00
        85.00 64.45 53.56 48.15 50.00
        70.00 48.90 38.43 35 40.00
        55.00 38.79 30.39 27.27 30.00
        40.00 35.00 30.00 25.00 20.00 ];

HW4_19 = interp2(x, y, t, 4.2, 3.3);
HW4_20 = interp2(x, y, t, 4.4, 2.8);
HW4_21 = interp2(x, y, t, 6.6, 5.7);
[Xq,Yq] = meshgrid(0:0.25:8);
HW4_22 = interp2(x, y, t, Xq, Yq);

% figure
% surf (x,y,t);
% 
% figure
% surf (0:0.25:8, 0:0.25:8, HW4_22);

save HW4_19.dat HW4_19 -ascii;
save HW4_20.dat HW4_20 -ascii;
save HW4_21.dat HW4_21 -ascii;
save HW4_22.dat HW4_22 -ascii;

end

