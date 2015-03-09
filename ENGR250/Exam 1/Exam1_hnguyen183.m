close all;
clearvars;
clc

% Set 1 ---------------------------------------
% Write a function named anglebetween.m which 
% accepts two 3-element vectors and returns the angle, in degrees,
% acosd, which is the inverse cosine in degrees.

E1_1 = anglebetween ([1,2,3],[4,5,6]);

% Euclidean Norm
E1_2 = euclidnorm ([1,2,3,4,5,6,7,8,9]);

% Set 2 ---------------------------------------
% f = 9x^2 - 18x - 9 = 0
% Bisection Method

x_up = 0;
upper = 9*x_up^2 - 18*x_up - 9;

x_low = -9;

x_mid = (x_up + x_low)/2;
mid = 9*x_mid^2 - 18*x_mid - 9;

while (abs(mid) > 1e-9)
    if (sign(upper) == sign (mid))
        x_up = x_mid;
    else
        x_low = x_mid;
    end
    x_mid = (x_up + x_low)/2;
    mid = 9*x_mid^2 - 18*x_mid - 9;

end

E_2_1 = x_mid;
E_2_2 = mid;

hold on;
grid on;

x_plot = -9:0.9:9;
f_plot = 9.*x_plot.^2 - 18.*x_plot - 9;

plot (x_plot, f_plot);
plot (x_mid, mid, 'sqr');

% Set 3 ---------------------------------------
% f = x^3 - 2x^2 - 1 = 0
% Newton-Raphson Method

% NaN answer, choosing local min:
x_0 = 4/3;
f = x_0^3 - 2*x_0^2 - 1;
fPrime = 3*x_0^2 - 2*2*x_0;

i = 0;
while (abs(f) > 1e-9)
    x_0 = x_0 - f/fPrime;
    f = x_0^3 - 2*x_0^2 -1;
    fPrime = 3*x_0^2 - 2*2*x_0;
    i = i + 1;
end

E3_1 = f;
E3_1_r = x_0;

% Root Found:
x_1 = -18;
f = x_1^3 - 2*x_1^2 - 1;
fPrime = 3*x_1^2 - 2*2*x_1;

while (abs(f)> 1e-9)
    x_1 = x_1 - f/fPrime;
    f = x_1^3 - 2*x_1^2 - 1;
    fPrime = 3*x_1^2 - 2*2*x_1;
end

E3_2 = f;
E3_2_r = x_1;

% Set 4 --------------------------------------
% LU and A\b
load Data.mat;

X = zeros (size(A));
for i=1:length(A)
    X(:,i) = A\B(:,i);
end

E4_1 = X;

[L,U] = lu(A);
X = U\(L\B);

E4_2 = X;

[V,D] = eig(A);

E4_3 = V*(D^100)*inv(V);

E4_4 = A^100;


