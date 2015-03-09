x = 0:1:4;
y = cos(x);

xfine = 0:0.1:4;

% linear interpolation of y(x) on xfine

ylinear = interp1 (x,y,xfine);