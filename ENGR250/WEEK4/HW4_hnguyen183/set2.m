function set2()
global datax datay
% Set 2 ----------------------------------------------
% Least-Square : Power Model

% Fit the following data with the power model (y = axb) using Matlab's fminsearch
% to minimize the squared error. Start with an initial guess of a = 1; b = 1

datax = [2.5 3.5 5 6 7.5 10 12.5 15 17.5 20.2];
datay = [13.2 10.8 8.5 8.2 7 6.2 5.2 4.8 4.6 4.4];

% Plot the data and the regression line with 2:5  x  20:2 and x = 0:1.
% - save the regressed f(9:8) value on HW4 7.dat  
% - save the regressed f(18:75) value on HW4 8.dat  
% - save the f(x) values of the regression line on HW4 9.dat  

answers = fminsearch('exponentmin',[1,1]);
 
A = answers(1);
B = answers(2);

xplot = 2.5:0.1:20.2;

HW4_7 = A*(9.8^B);
HW4_8 = A*(18.75^B);
HW4_9 = A*(xplot.^B);

figure
hold on
plot (datax, datay,'x','markersize',9);
plot (9.8, HW4_7, '*');
plot (18.75, HW4_8 , '*');
plot (xplot, HW4_9);
hold off

save HW4_7.dat HW4_7 -ascii;
save HW4_8.dat HW4_8 -ascii;
save HW4_9.dat HW4_9 -ascii;

end

