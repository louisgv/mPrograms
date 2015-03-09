close all;
% clearvars;
clc

% Set 1 ----------------------------------------------
% Bisection Method & False Position Method
% Determine the roots of f2(x) = _13 _ 20x + 19x2 _ 3x3:
% - Using bisection method. Employ initial guesses of xl = -1 and xu = 0,
% and iterate until you are within 1e-4 of the root. Save results(13 matrix
% order : root, required number of iterations) on HW3 1.dat

x_up = 0;
upper = -13 - 20*x_up + 19*x_up^2 - 3*x_up^3;

x_low = -1;

x_mid = (x_up+x_low)/2;
mid = -13 - 20*x_mid + 19*x_mid^2 - 3*x_mid^3;

iter = 1;
while (abs(mid) > 1e-4)
    if (sign(upper) == sign (mid))
        x_up = x_mid;
    else
        x_low = x_mid;
    end
    x_mid = (x_up + x_low)/2;
    mid = -13 - 20*x_mid + 19*x_mid^2 - 3*x_mid^3;
    iter = iter + 1;
end

HW3_1 = [x_mid, iter];

% - Using false position method. Employ initial guesses of xl = _1 and xu = 0
% ,and again iterate until you are within 1e-4 of the root. Save results(13
% matrix order : root, required number of iterations) on HW3 2.dat

x_up = 0;
upper = -13 - 20*x_up + 19*x_up^2 - 3*x_up^3;

x_low = -1;
lower = -13 - 20*x_low + 19*x_low^2 - 3*x_low^3;

x_mid = x_up - (x_up - x_low)*upper/(upper-lower);
mid = -13 - 20*x_mid + 19*x_mid^2 - 3*x_mid^3;

iter = 1;
while (abs(mid) > 1e-4)
    if (sign(upper) == sign (mid))
        x_up = x_mid;
        upper = -13 - 20*x_up + 19*x_up^2 - 3*x_up^3;
    else
        x_low = x_mid;
        lower = -13 - 20*x_low + 19*x_low^2 - 3*x_low^3;
    end
    x_mid = x_up - (x_up - x_low)*upper/(upper-lower);
    mid = -13 - 20*x_mid + 19*x_mid^2 - 3*x_mid^3;
    iter = iter + 1;
end

HW3_2 = [x_mid, iter];


% Set 2 ----------------------------------------------
% False Position Method
% Determine the real root of x^(3.5) = 80 with the false position method to within
% 1e-5. Use initial guesses of 1.0 and 5.0.
% - save the real root on HW3 3.dat
% - save the required number of iterations on HW3 4.dat

x_up = 5.0;
upper = x_up^(3.5)-80;

x_low = 1.0;
lower = x_low^(3.5)-80;

x_mid = x_up - (x_up - x_low)*upper/(upper-lower);
mid = x_mid^(3.5)-80;

iter = 1;

while (abs(mid) > 1e-5)
    if (sign(upper) == sign (mid))
        x_up = x_mid;
        upper = x_up^(3.5)-80;
    else
        x_low = x_mid;
        lower = x_low^(3.5)-80;
    end
    x_mid = x_up - (x_up - x_low)*upper/(upper-lower);
    mid = x_mid^(3.5)-80;
    iter = iter + 1;
end

HW3_3 = x_mid;
HW3_4 = iter;


% Set 3 ----------------------------------------------
% Newton-Raphson Method, & Secant Method
% Determine the highest real root of f5(x) = 2x^3 - 11.7x^2 + 17.7x - 5:
% - Newton-Rapson method (five iterations, x0=3).
% - save the root on HW3 5.dat file
% - save the function evaluated at the root after 5 iterations onHW3 6.dat
% file

x_0 = 3;
f = 2*x_0^3 - 11.7*x_0^2 + 17.7*x_0 - 5;
fPrime = 2*3*x_0^2 - 11.7*2*x_0 + 17.7;
for i=1:5
    x_0 = x_0 - f/fPrime;
    f = 2*x_0^3 - 11.7*x_0^2 + 17.7*x_0 - 5;
    fPrime = 2*3*x_0^2 - 11.7*2*x_0 + 17.7;
end

HW3_5 = x_0;
HW3_6 = f;

% - Secant method (five iterations, x_-1 = 3, x0 = 4).
% - save the root on HW3 7.dat file
% - save the function evaluated at the root on HW3 8.dat file

x = zeros(1,7);
f = zeros(1,7);

x(1) = 3;
x(2) = 4;

for i=1:7
    if (i>2)
       x(i) = x(i-1) - (x(i-1) - x(i-2)) * f(i-1)/(f(i-1)-f(i-2));
    end
    f(i) = 2*x(i)^3 - 11.7*x(i)^2 + 17.7*x(i) - 5;
end

HW3_7 = x(7);
HW3_8 = f(7);


% Modifed secant method (five iterations, x0 = 3, del = 0.1).
% - save the root on HW3 9.dat file
% - save the function evaluated at the root on HW3 10.dat file

x_0 = 3;
d = 0.1;

f = 2*x_0^3 - 11.7*x_0^2 + 17.7*x_0 - 5;
step = x_0 - d*x_0;
f_step = 2*step^3 - 11.7*step^2 + 17.7*step - 5;

for i=1:5
    x_0 = x_0 - d * x_0 * f / (f - f_step);
    step = x_0 - d*x_0;
    f = 2*x_0^3 - 11.7*x_0^2 + 17.7*x_0 - 5;
    f_step = 2*step^3 - 11.7*step^2 + 17.7*step - 5; 
end

HW3_9 = x_0;
HW3_10 = f;


% Set 4 ----------------------------------------------
% Secant Method
% Determine the real root of x3:5 = 80, with the modified secant method to within
% 1e-6 using an initial guess of x0 = 3:5 and d = 0:05.
% - save the root on HW3 11.dat file
% - save the function evaluated at the root on HW3 12.dat file
% - save the required number of iterations on HW3 13.dat file

x_0 = 3.5;
d = 0.05;

f = x_0^3.5-80;
% err = f-80;
step = x_0 - d*x_0;
f_step = step^3.5-80;

iter = 0;

while (abs(f) > 1e-6)
    x_0 = x_0 - d * x_0 * f / (f - f_step);
    f = x_0^3.5-80;
    %     err = f-80;
    step = x_0 - d*x_0;
    f_step = step^3.5-80;
    iter = iter + 1;
end

HW3_11 = x_0;
HW3_12 = f;
HW3_13 = iter;

save HW3_1.dat HW3_1 -ascii;
save HW3_2.dat HW3_2 -ascii;
save HW3_3.dat HW3_3 -ascii;
save HW3_4.dat HW3_4 -ascii;

save HW3_5.dat HW3_5 -ascii;
save HW3_6.dat HW3_6 -ascii;
save HW3_7.dat HW3_7 -ascii;
save HW3_8.dat HW3_8 -ascii;

save HW3_9.dat  HW3_9 -ascii;
save HW3_10.dat HW3_10 -ascii;
save HW3_11.dat HW3_11 -ascii;

save HW3_12.dat HW3_12 -ascii;
save HW3_13.dat HW3_13 -ascii;
