function set1()
% Set 1 ----------------------------------------------
% Linear Systems
% Numerical solutions of Poisson’s equation

% As discussed in class on 3/10-11, Solving the equation ultimately leaves 
% us solving a linear system of the form Ax = b
% For this problem, solve this system instead on the line, 
% which simplifies the equation to 

% d2p(x)/d2x = r(x)

% Solve this equation for x in [0,10] with , dx = 0.1
% And subject to boundary condition:
% r(x) = x in [0,2.5]
% r(x) = 5-x in [2.5,7.5]
% r(x) = -10+x in [7.5,10]

% This type of boundary condition, where the function value is 
% specified on the boundary, is called a Dirichlet boundary condition.

% Recall, this generates a large system of equations 
% at each point on the line of the form

% p_(x-1) - 2 * p_i + p_(i+1) = p_i ( del(x)^2

% Which is valid at each internal grid point. 
% Building the Matrix A can be done in a fairly automated fashion 
% with the “diag” function in MATLAB

% Name your solution vector “Final1”, and plot its value vs 
x = 0:0.1:10;

coeff = diag(-2*ones(1,99)) + diag(ones(1,98),1) + diag(ones(1,98),-1);



dy = @ (t,y) -10.8*y;

[t, y] = ode45 (dy, [0,3], 1);

Final1 = y;

plot (x, Final1,'-.k', t, exp(-10.8*t), '--r');

end

