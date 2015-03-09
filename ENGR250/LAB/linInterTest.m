close all; clearvars; clc
x = 0:1:1000;
y = sind(x);
%x_test = 0:0.01:100;
x_test = 0:10:1000;

y_test = linearInterpolation(x,y,x_test);

errorVar = y_test - sind(x_test);

hold on;
grid on;

plot (x,y,'-r');
 
plot (x_test,y_test,'x -k');

plot (x_test,errorVar);
