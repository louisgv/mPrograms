% 
% A Spline is a piecewise cubic funciton which perfectly fits your data
% 
% We impose:
% 1. Function is Continuous
% 2. Derivative is Continuous
% 3. 2nd Derivative is Continuous


% S_k(x) = S_(k,0) + S_(k,1)(x-x_k) + S_(k,2)(x-x_k)^2 + S_(k,3)(x-x_k)^3
%
% S_k(x_k) = y_k
% S_k(x_(k+1)) = S_(k+1)(x_(k+1))
% S_k(x_(k+1))' = S_(k+1)(x_(k+1))'
% S_k(x_(k+1))'' = S_(k+1)(x_(k+1))''

% Convenient Fact:
% S_k(x_k) = S_(k,0)
% S_k(x_k)' = S_(k,1)
% S_k(x_k)'' = 2*S_(k,2)

% For n CUBIC functions

% -> 4n unknown

% (n+1) S_k(x_k) = y_k, S_(n-1)(x_n) = y_n
% (n-1) S_k(x_k+1) = (S_(k+1)(x_(k+1))
% (n-1) S_k'(x_k+1) = (S_(k+1)(x_(x+1))'
% (n-1) S_k''(x_k+1) = (S_(k+1)(x_(k+1))''

% 4n - 2 equations

% S_k(x) - S_(k,0) + S_(k,1)(x-x_k) 
%       + S_(k,2)(x-x_k)^2 + S_(k,3)(x-x_k)^3

% Get 2 degrees of freedom to make up
% 
% If two subscripts, it is a coeff. 
% If 1 subscript, it is a function.


