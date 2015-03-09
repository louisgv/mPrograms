close all
clear vars
clc

x = 0:0.1:2;
x_fine = 0:0.0001:2;

x_sparse = 0:0.25:2;

y = cos( x );

coeff = polyfit (x , y , 10);

% ypoly = coeff(1)*x.^5 + coeff(2) * x.^4 + coeff(3)*x.^3 +...
%     coeff(4)*x.^2 + coeff(5)*x + coeff(6);

ypoly = polyval (coeff, x);

% ylinear = interp1(x, y, x_sparse, 'spline');

ylinear = interp1(x, y, x_fine, 'spline');

figure
% plot (x, y, x, ypoly, x_sparse, ylinear);

plot (x, y, x_fine, ylinear);
