close all;
clearvars;
clc;

x = [0 : 1 : 20;
     pi, 4, 21, 66, 57, 73, 74, 75, 56, -46, ... 
     34, -64, 42, -35, 12, 53, 22, 44, 21, 15, 124];
 
figure

plot (x(1,:), x (2,:), '.');

A = zeros(2,2);

b = zeros(2,1);



C = A\b;

y = polyval (C, 0:1:20);

hold on

plot (0:1:20, y);




