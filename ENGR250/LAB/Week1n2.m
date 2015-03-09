close all; clear variables; clc

x = -2pi:1:2pi;

hold on;

for i = [1,3,10,20]
    plot (x, sinapprox(x,i))
    plot (x, sin(x))
end

grid on;


% i = 0;
% while 2^(-i) >= 1e-10
%     i = i + 1;
% end

% j = 0;
% ceil (log2(10)*10)
% while j < ceil (log2(10)*10)
%     j = j + 1;
% end

% sum = zeros(1,11);
% 
% for i = 1:10
%     sum (i + 1) = sum (i) + i^2;
% end