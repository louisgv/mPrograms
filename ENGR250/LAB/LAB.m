close all;
clear vars;
clc

% 2/19/2015 Test Minimum
% 
% global datax datay
% 
% datax = 1:1:15;
% datay = [1,9,23.6,23.7,30,10*pi,11*pi,13*pi,100,...
%     400,pi^6,1000,1001,1200,2000];
% 
% answers = fminsearch('minimumtest',[1,1,1]);
%  
% A = answers(1);
% B = answers(2);
% C = answers(3);
% 
% xplot = 0:1:15;
% 
% figure
% % plot(xplot, A*xplot+B);
% plot(xplot, A*(xplot-B).^C);
% 
% hold on
% 
% plot (datax, datay,'*','markersize',8);
% 

% 2/24/2015
% Numerical Derivative
% 
% deltax = 0.01;
% 
% x = 0: deltax: 10;
% y = sin(x);
% 
% 
% dydx = zeros(size(x));
% d2ydx2 = zeros(size(x));
% 
% dydx(1) = (-3*y(1) + 4*y(2) - y(3))/(2*deltax);
% dydx(end) = (-3*y(1) + 4*y(2) - y(3))/(-2*deltax);
% 
% for i = 2:length(x) -1
%     dydx(i) = (y(i+1) - y(i-1))/(2*deltax);
%     
%     dydx(i) = (y(i+1) - y(i-1))/(2*deltax);
% end
% 
% 
% plot (x, y, x, dydx, x, d2ydx2);
% 

% 2/25/2015
% Better magnitude
% 
% 
% xsolution = fminsearch('whatever',[0,0]);
% 
% f = @(x) x.^2;
% 
% f (3);

% Numerical Integration
% Evaluate an integral given a domain vector x 
% contain n equally spaced points

% 2/26/2015
% 
% deltax = 1e-11;
% 
% x= pi-5*deltax:deltax:pi+5*deltax;
% 
% y = sin(x);
% 
% dydx = zeros(size(x));
% 
% dydx (1) = (-3*y(1)+4*y(2)-y(3))/(2*deltax);
% 
% dydx(end) = (3*y(end)-4*y(end-1)+y(end-2))/(2*deltax);
% 
% for i = 2:length(x)-1
% %     Center finite Secant Differentiation
%     dydx(i) = (y (i+1)-y(i-1))/(2*deltax);
% end
% 
% % error = abs ( dydx - cos(x));
% error = dydx - cos(x);
% max(error)
 
% THe tuncaqtino error, as delta t smaller doesnt mean roudning error is
% smaller. Where 1/delta(t) actually make error go up.

% plot(x,dydx);


% 2/27/2015
% 
% t = 0:pi/20:pi;
% v = sin(t);
% int = trapz(t,v);
% x = cumtrapz(t,v);
% 
% 
% plot (t,x);
% 

% 3/2/2015

% ODEs:
% dy/dt = f(t,y)
% 
% deltat = 0.01;
% 
% t= 0:deltat:9*pi;
% 
% y = zeros(size(t));
% 
% y(1) = 1;
% 
% for i=2:length(t)
% %     y(i) = y(i-1)+deltat*cos(t(i-1));
%     y(i) = y(i-1)+deltat*y(i-1);                                                                                                                                                                                                                             
% end
% 
% plot(t,y,t,exp(t));
% 
% 
% [tout, yout] = ode45('odetest1', [0,3*pi],2);
% 
% plot (tout, yout);
% 

% name - spand of time - initial condition.
% [tout, yout] = ode45 ('myodetest', [0,10], [2;1]);
% 
% plot (tout,yout(:,1),'--b',tout, yout(:,2), ':r');
% 
% close all;
% clearvars;
% clc
% 
% % 3/5/2015
% global b k m
% 
% m = 100; b = 1; k = 100;
% [t,y] = ode45 ('motion', [0,10], [10000;0]);
% plot(t,y(:,1));

% 3/6/2015

% Shooting method || Dumb method that works
% Turn into an IVP by guessing y'(0)
% Solve IVP -> determine y(b)
% Mod guess of y'(0) to attempt to get closer to y(b) = B































