function set3()
% Set 3 ----------------------------------------------
% Least-Square : MatLab Commands
% Use the MatLab commands, i.e., 'polfit', 'polyval', 'interp1' and so on,
x = [2.5 3.6 5 6 7.5 10.1 12.5 15.2 17.6 20];
y = [13.1 11 8.5 8.2 7 6.2 5.2 4.8 4.6 4.3];

% With 'polyfit' (7th order polynomial) & 'polyval' command and 2:5  x  20
% and x = 0:1, make following dat fi s and submit them.
% - save the regressed f(9:5) value on HW4 10.dat  
% - save the regressed f(13) value on HW4 11.dat  
% - save the f(x) values of the regression line on HW4 12.dat  

C = polyfit (x,y,7);
xplot = 2.5:0.1:20;

HW4_10 = polyval (C, 9.5);
HW4_11 = polyval (C, 13);
HW4_12 = polyval (C, xplot);

% figure
% hold on
% plot (x, y,'x','markersize',9);
% plot (9.5, HW4_10, '*');
% plot (13, HW4_11 , '*');
% plot (xplot, HW4_12);

% With 'interp1' command and 2:5  x  20 and x = 0:1, make following dat
% fi s and submit them.
% - save the regressed f(9:5) value on HW4 13.dat  
% - save the f(x) values of the regression line on HW4 14.dat  

HW4_13 = interp1 (x,y, 9.5);
HW4_14 = interp1 (x,y, xplot);

% plot (9.5, HW4_13, '*');
% plot (xplot, HW4_14,':b');

% With 'interp1' (nearest option) command and 2:5  x  20 and x = 0:1, make
% following dat fi s and submit them.
% - save the regressed f(9:5) value on HW4 15.dat  
% - save the f(x) values of the regression line on HW4 16.dat  

HW4_15 = interp1 (x,y, 9.5, 'nearest');
HW4_16 = interp1 (x,y, xplot, 'nearest');

% plot (9.5, HW4_15, '*');
% plot (xplot, HW4_16, '-.r');

% With 'interp1' (spline option) command and 2:5  x  20 and x = 0:1, make
% following dat fi s and submit them.
% - save the regressed f(9:5) value on HW4 17.dat  
% - save the f(x) values of the regression line on HW4 18.dat  

HW4_17 = interp1 (x,y, 9.5, 'spline');
HW4_18 = interp1 (x,y, xplot, 'spline');

% plot (9.5, HW4_17, '*');
% plot (xplot, HW4_18, '--k');

save HW4_10.dat HW4_10 -ascii;
save HW4_11.dat HW4_11 -ascii;

save HW4_12.dat HW4_12 -ascii;
save HW4_13.dat HW4_13 -ascii;
save HW4_14.dat HW4_14 -ascii;

save HW4_15.dat HW4_15 -ascii;
save HW4_16.dat HW4_16 -ascii;

save HW4_17.dat HW4_17 -ascii;
save HW4_18.dat HW4_18 -ascii;

end

