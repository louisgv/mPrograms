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
dxcoarse = 0.5;
xcoarse = 0:dxcoarse:5;
ycoarse = sin(xcoarse);
% Imagine, for the sake of this
% problem, that these two vectors are data
% that come from measurements,

% Your task is to calculate the first and
% second derivatives in 5 different ways.
% For many of these methods, we will need a
% finer x vector. Create a fine x vector,
dxfine = 0.01;
xfine = 0:dxfine:5;
yfine = sin(xfine);
% The five methods for the derivatives are:

% 1) True Derivative
% The analytical solution to the first and
% second derivative, evaluated on xfine.

% Call the first derivative
dydxtrue = cos(xfine);
% and second derivative
d2ydx2true = -sin(xfine);

% 2) Coarse Finite difference
% Use O(del(x)^2) accurate finite difference
% schemes on the coarse data.

n = length(ycoarse);

% Call the derivatives
dydxcoarse = zeros(n);
    dydxcoarse(1)= (-3*ycoarse(1)+4*ycoarse(2)-ycoarse(3))/(2*dxfine);
        for i=2:n-1
            dydxcoarse(i) = (ycoarse(i+1)-ycoarse(i-1))/(2*dxfine);
        end
    dydxcoarse(n)=(3*ycoarse(n)-4*ycoarse(n-1) + ycoarse(n-2))/(2*dxfine);
% and
d2ydx2coarse = zeros(n);
    d2ydx2coarse(1)=  (2*ycoarse(1) - 5*ycoarse(2) + 4*ycoarse(3)-ycoarse(4))/dxfine^2;
        for i=2:n-1
            d2ydx2coarse(i) = (ycoarse(i+1)-2*ycoarse(i) + ycoarse(i-1))/dxfine^2;
        end
    d2ydx2coarse(n)=  (2*ycoarse(n) - 5*ycoarse(n-1) + 4*ycoarse(n-2)-ycoarse(n-3))/dxfine^2;


% 3) Finite difference on "nearest" interpolation
% Using O(del(x)^2) accurate finite difference
% schemes on the coarse data interpolated
% on xfine. Use the interp1 function with
% the nearest option.

ynearest = interp1(xcoarse, ycoarse, xfine,'nearest');

% Call the derivatives
dydxnearest = interp1(xcoarse, dydxcoarse, xfine, 'nearest');
% and
d2ydx2nearest= interp1(xcoarse, d2ydx2coarse, xfine, 'nearest');

% 4) Finite difference on linear interpolation
% Using O(del(x)^2) accurate finite difference % schemes on the coarse data interpolated
% on xfine. Use the interp1 function with
% the "linear" option.

ylinear = interp1(xcoarse, ycoarse, xfine);

% Call the derivatives
dydxlinear = interp1(xcoarse, dydxcoarse, xfine);
% and
d2ydx2linear = interp1(xcoarse, d2ydx2coarse, xfine);

%5) Finite difference on spline interpolation
% Using O(del(x)^2) accurate finite difference
% schemes on the coarse data interpolated
% on xfine. Use the interp1 function with the
% 'spline' option.

yspline = interp1(xcoarse, ycoarse, xfine, 'spline');

% Call the derivatives
dydxspline = interp1(xcoarse, dydxcoarse, xfine, 'spline');
%and
d2ydx2spline = interp1(xcoarse, d2ydx2coarse, xfine, 'spline');

% Create three plots:
% For the plot of the function,
% plot all 5 methods.
figure; hold on;
title('Original Function plots');
plot(   xcoarse, ycoarse, ...
        xfine, yfine,...
        xfine, ylinear,...
        xfine, ynearest,...
        xfine, yspline);
hold off;

% For the derivative, plot all except "nearest"

figure; hold on;
title('First Derivative plots');
plot(   xcoarse, dydxcoarse,...
        xfine, dydxtrue,...
        xfine, dydxlinear,...
        xfine, dydxspline);
hold off;

% For the second derivative, plot all except
% the linear and spline interpolation.

figure; hold on;
title('Second Derivative plots');
plot(   xcoarse, d2ydx2coarse,...
        xfine, d2ydx2true,...
        xcoarse, d2ydx2nearest);
hold off;

% Notice how the accuracy of the
% interpolation methods degrades as
% higher derivatives are taken.

% For each plot, make sure when you plot
% the coarse data you use a marker (like "o")
% instead of a line, since this is only
% known at coarse locations.



%-------------Notes--------------------------------------------------------
% To make the plots and lines easier to
% distinguish, I recommend using the
% "legend" and "title" commands in Matlab.

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
