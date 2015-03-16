function set2()
% Set 2 ----------------------------------------------
% Interpolation and Numerical Differentiation

% The value of splines
% In class we discussed the value of splines and how they
% do more than make a graph look pretty.

% The purpose of this problem is to provide an example of the value
% of splines by combining several things we have now learned.

% We are going to examine y = sin(x) and
% its derivatives based on coarse data.
% Let
xCoarse = 0:0.5:5;
%  and
yCoarse = sin(xCoarse);
% Imagine, for the sake of this
% problem, that these two vectors are data
% that come from measurements,
% and you are unaware that they come from

% Your task is to calculate the first and
% second derivatives in 5 different ways.
% For many of these methods, we will need a
% finer x vector. Create a fine x vector,
xFine = 0:0.01:5;
% The five methods for the derivatives are:

% 1) True Derivative
% The analytical solution to the first and
% second derivative, evaluated on xFine.

% Call the first derivative
dydxtrue = 0;
% and second derivative
d2ydx2true = 0;

% 2) Coarse Finite difference
% Use O(del(x)^2) accurate finite difference
% schemes on the coarse data.

% Call the derivatives
dydxcoarse = 0;
% and
d2ydx2coarse = 0;

% 3) Finite difference on �nearest� interpolation
% Using O(del(x)^2) accurate finite difference
% schemes on the coarse data interpolated
% on xFine. Use the interp1 function with
% the �nearest� option.

% Call the derivatives
dydxnearest = 0;
% and
d2ydx2nearest= 0;

% 4) Finite difference on linear interpolation
% Using O(del(x)^2) accurate finite difference
% schemes on the coarse data interpolated
% on xFine. Use the interp1 function with
% the �linear� option.

% Call the derivatives
dydxlinear = 0;
% and
d2ydx2linear = 0;

% Create three plots:
% one for the function itself,
% For the plot of the function,
% plot all 5 methods.

% one for the first derivative, and
% For the derivative, plot all except �nearest�

% one for the second derivative.
% For the second derivative, plot all except
% the linear and spline interpolation.


% Notice how the accuracy of the
% interpolation methods degrades as
% higher derivatives are taken.

% For each plot, make sure when you plot
% the coarse data you use a marker (like �o�)
% instead of a line, since this is only
% known at coarse locations.



%-------------Notes--------------------------------------------------------
% To make the plots and lines easier to
% distinguish, I recommend using the
% �legend� and �title� commands in Matlab.

% When option 1) above is unavailable
% (i.e., the function is not known),
%     and a derivative is needed,

%     (2) is the most obvious option,
%     but gives the derivative based only
%     on the coarse data.

%     With interpolation, we can get
%     finer data, but the accuracy degrades
%     quickly when we take higher derivatives.
%     This is an advantage of splines.

%     With higher order polynomial
%     interpolation, we can get even better
%     results that remain accurate to
%     higher derivatives.
%-------------EoN----------------------------------------------------------

% Answer the following questions in comments
% in your m-file:

% 1) Regarding the plot of the function,
% rank the three interpolation methods
% from best to worst at:
% a) Fitting the data (x_coarse, y_coarse)
%-------------Respond Below--------------------
%
%
%
%-------------End of Respond-------------------
% b) Fitting the parent function, (y = sin(x))
%-------------Respond Below--------------------
%
%
%
%-------------End of Respond-------------------
% 2) Regarding the calculation of the
% first derivative, rank the 4 methods
% from best to worst at fitting the
% parent function derivative, dy/dx = cos(x).
%-------------Respond Below--------------------
%
%
%
%-------------End of Respond-------------------
% How would you rate the accuracy
% of the spline considering
% how coarse the data was it came from?
%-------------Respond Below--------------------
%
%
%
%-------------End of Respond-------------------
% 3) Regarding the calculation of the
% second derivative, rank the 4 methods
% from best to worst at fitting the
% parent function
% second derivative, d2y/d2x =-sin(x)
%-------------Respond Below--------------------
%
%
%
%
%-------------End of Respond-------------------

%-------------Notes--------------------------------------------------------
% While the results here are specific
%   to this problem, they generalize well
%   so long as our data comes from a function
%       which is infinitely differentiable
%       (we can take its derivative as
%       many times as we like),
%       which is how most physical
%       functions behave.
%-------------EoN----------------------------------------------------------

% Hope you had a good time in the class,
%-------------Respond Below--------------------
% Sure did! Thanks for the knowledge, Sir!
%-------------End of Respond-------------------
%   and good luck in future endeavors.
%-------------Respond Below--------------------
% Thank you Sir!
%-------------End of Respond-------------------
% Now, get some sleep.
%-------------Respond Below--------------------
% Will do, when I die.
%-------------End of Respond-------------------

end
