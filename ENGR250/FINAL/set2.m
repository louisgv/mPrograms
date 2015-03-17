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
dxCoarse = 0.5;
xCoarse = 0:dxCoarse:5;
%  and
yCoarse = sin(xCoarse);
% Imagine, for the sake of this 
% problem, that these two vectors are data 
% that come from measurements,

% Your task is to calculate the first and 
% second derivatives in 5 different ways. 
% For many of these methods, we will need a 
% finer x vector. Create a fine x vector,
dxFine = 0.01;
xFine = 0:dxFine:5;
% The five methods for the derivatives are:

% 1) True Derivative
% The analytical solution to the first and 
% second derivative, evaluated on xFine. 

% Call the first derivative 
dydxtrue = cos(xFine);
% and second derivative 
d2ydx2true = -sin(xFine);

% 2) Coarse Finite difference
% Use O(del(x)^2) accurate finite difference 
% schemes on the coarse data. 

n = length(yCoarse);

% Call the derivatives 
dydxcoarse = zeros(n);
    dydxcoarse(1)= (-3*yCoarse(1)+4*yCoarse(2)-yCoarse(3))/(2*dxFine);
        for i=2:n-1
            dydxcoarse(i) = (yCoarse(i+1)-yCoarse(i-1))/(2*dxFine); 
        end
    dydxcoarse(n)=(3*yCoarse(n)-4*yCoarse(n-1) + yCoarse(n-2))/(2*dxFine);
% and 
d2ydx2coarse = zeros(n);
    d2ydx2coarse(1)=  (2*yCoarse(1) - 5*yCoarse(2) + 4*yCoarse(3)-yCoarse(4))/dxFine^2;
        for i=2:n-1
            d2ydx2coarse(i) = (yCoarse(i+1)-2*yCoarse(i) + yCoarse(i-1))/dxFine^2;
        end
    d2ydx2coarse(n)=  (2*yCoarse(n) - 5*yCoarse(n-1) + 4*yCoarse(n-2)-yCoarse(n-3))/dxFine^2;


% 3) Finite difference on "nearest" interpolation
% Using O(del(x)^2) accurate finite difference
% schemes on the coarse data interpolated 
% on xFine. Use the interp1 function with 
% the nearest option. 

% Call the derivatives 
dydxnearest = interp1(xCoarse, dydxcoarse, xFine, 'nearest');
% and 
d2ydx2nearest= interp1(xCoarse, d2ydx2coarse, xFine, 'nearest');

% 4) Finite difference on linear interpolation
% Using O(del(x)^2) accurate finite difference % schemes on the coarse data interpolated 
% on xFine. Use the interp1 function with 
% the "linear" option. 

% Call the derivatives 
dydxlinear = interp1(xCoarse, dydxcoarse, xFine);
% and 
d2ydx2linear = interp1(xCoarse, d2ydx2coarse, xFine);

%5) Finite difference on spline interpolation
% Using O(del(x)^2) accurate finite difference 
% schemes on the coarse data interpolated 
% on xFine. Use the interp1 function with the 
% 'spline' option. 

% Call the derivatives 
dydxspline = interp1(xCoarse, dydxcoarse, xFine, 'spline');
%and 
d2ydx2spline = interp1(xCoarse, d2ydx2coarse, xFine, 'spline');

% Create three plots:
% For the plot of the function, 
% plot all 5 methods. 
figure; hold on;
plot(xCoarse, yCoarse);
hold off;

% For the derivative, plot all except "nearest" 

figure; hold on; 
plot(xCoarse,dydxcoarse,xFine,dydxlinear,xFine,dydxspline);
hold off;

% For the second derivative, plot all except 
% the linear and spline interpolation. 

figure; hold on; 
plot(xCoarse,d2ydx2coarse,xCoarse,d2ydx2nearest);
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