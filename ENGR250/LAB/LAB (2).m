close all;
clearvars;
clc

% 3/5/2015
global b k m

m = 100; b = 1; k = 100;
[t,y] = ode45 ('motion', [0,10], [10000;0]);
plot(t,y(:,1));