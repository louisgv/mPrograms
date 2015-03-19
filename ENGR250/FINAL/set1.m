function set1()
% Set 1 ----------------------------------------------
% Linear Systems
% Numerical solutions of Poisson's equation

% As discussed in class on 3/10-11, Solving the equation ultimately leaves
% us solving a linear system of the form Ax = b
% For this problem, solve this system instead on the line,
% which simplifies the equation to

% d2p(x)/d2x = r(x)

% Solve this equation for x in [0,10] with

dx = 0.1;
x = 0:dx:10;

% And subject to boundary condition:
r = @(x)( (x >= 0   && x < 2.5).*x + ...
          (x >= 2.5 && x < 7.5).*(5-x) + ...
          (x >= 7.5 && x <= 10 ).*(x-10) );

x_b = dx:dx:10-dx;

b = arrayfun(r,(x_b'))*(dx^2);

% This type of boundary condition, where the function value is
% specified on the boundary, is called a Dirichlet boundary condition.

% Recall, this generates a large system of equations
% at each point on the line of the form

% p_(x-1) - 2 * p_i + p_(i+1) = p_i ( del(x)^2

% Which is valid at each internal grid point.
% Building the Matrix A can be done in a fairly automated fashion
% with the 'diag function in MATLAB

A = diag(ones(1,98),1) + diag(-2*ones(1,99)) + diag(ones(1,98),-1);

p = A\b;

% Name your solution vector
Final1 = [0;p;0];

% and plot its value vs

plot (x, Final1,'-.k');

end
