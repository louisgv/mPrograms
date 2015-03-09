function set2()
% Set 2 ----------------------------------------------
% Integration
% Evaluate the following integral
% (8 + 5 cos x) dx from 0 -> pi

% with your own trapezoid rule function or script
% - with one region - will require 2 total data points. Save onHW5 4.dat file
% - with two regions - will require 3 total data points. Save onHW5 5.dat file
% - with five regions - will require 6 total data points. Save onHW5 6.dat file

f = @(x) (8 + 5*cos(x));

HW5_4 = trapzsum( 0 , pi, f, 1);
HW5_5 = trapzsum( 0 , pi, f, 2);
HW5_6 = trapzsum( 0 , pi, f, 5);

% with your own Simpson's rule function or script,
% - with one region - will require 3 total data points. Save onHW5 7.dat file
% - with two regions - will require 5 total data points. Save onHW5 8.dat file
% - with five regions - will require 11 total data points. Save onHW5 9.dat file

HW5_7 = simpzsum( 0 , pi, f, 1, 1.8);
HW5_8 = simpzsum( 0 , pi, f, 2, 1.8);
HW5_9 = simpzsum( 0 , pi, f, 5, 1.8);

% with your own Simpson's 3/8 rule function or script,
% - with one region - will require 4 total data points. Save onHW5 10.dat file
% - with two regions - will require 7 total data points. Save onHW5 11.dat file
% - with five regions - will require 16 total data points. Save onHW5 12.dat file

HW5_10 = simpzsum( 0 , pi, f, 1, 9);
HW5_11 = simpzsum( 0 , pi, f, 2, 9);
HW5_12 = simpzsum( 0 , pi, f, 5, 9);

save HW5_4.dat HW5_4 -ascii;
save HW5_5.dat HW5_5 -ascii;
save HW5_6.dat HW5_6 -ascii;

save HW5_7.dat HW5_7 -ascii;
save HW5_8.dat HW5_8 -ascii;
save HW5_9.dat HW5_9 -ascii;

save HW5_10.dat HW5_10 -ascii;
save HW5_11.dat HW5_11 -ascii;
save HW5_12.dat HW5_12 -ascii;

end

