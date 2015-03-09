function set1()
% Set 1 ----------------------------------------------
% Least-Square : Linear Line

% Write your own  ast-squares method to fit a straight line to:

% Plot the data and the regression line with 0  x  19 and x = 0:1. Comment
% out plot before submission. I will be checking to see if plot is there.
% - save the regressed y value when x = 7:83 on HW4 1.dat
% - save the regressed y value when x = 14:04 on HW4 2.dat
% - save the y values of the regression line on HW4 3.dat

x = [0 2 4 6 9 11 13 15 17 19];
y = [5 6 7 6 9 8.5 7 10 12 12.5];

[A, b] = leastsqrtln (x,y);

C = A\b;

xplot = 0:0.1:19;
yregress = polyval (C, xplot);

HW4_1 = polyval (C, 7.83);
HW4_2 = polyval (C, 14.04);
HW4_3 = yregress;

% figure
% hold on
% plot (x, y, 'x','markersize',9);
% plot (7.83, HW4_1, '*');
% plot (14.04, HW4_2, '*');
% plot (xplot, HW4_3);
% hold off

% Repeat the prob m, but regress x versus y - that is, switch the variab . Plot
% the data and the regression line with 5  y  12 and y = 0:1.
% - save the regressed x value when y = 6:24 on HW4 4.dat
% - save the regressed x value when y = 11:32 on HW4 5.dat
% - save the x values of the regression line on HW4 6.dat

[A, b] = leastsqrtln (y,x);

C = A\b;

yplot = 5:0.1:12;
xregress = polyval (C, yplot);

HW4_4 = polyval (C, 6.24);
HW4_5 = polyval (C , 11.32);
HW4_6 = xregress;

% figure
% hold on
% plot (y, x, 'x','markersize',9);
% plot (6.24, HW4_4, '*');
% plot (11.32, HW4_5 , '*');
% plot (yplot, HW4_6);
% hold off

save HW4_1.dat HW4_1 -ascii;
save HW4_2.dat HW4_2 -ascii;
save HW4_3.dat HW4_3 -ascii;

save HW4_4.dat HW4_4 -ascii;
save HW4_5.dat HW4_5 -ascii;
save HW4_6.dat HW4_6 -ascii;

end

