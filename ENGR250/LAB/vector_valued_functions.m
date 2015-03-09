% x_1^3 + x_2^2 + x_1 * x_2 - 8 = 0
% x_1 ^ 2 * exp ( x_2 ) - 7 = 0

close all;
clear vars;
clc

x = [1;1];

for i = 1:5
    deltaX = jacobian(x(:,i))\-fineVector(x(:,i));
    x(:,i+1) = deltaX + x (:,i);
end