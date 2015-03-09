function set1()
% Set 1 ----------------------------------------------
% 1. Diferentiation Find the following derivatives of f(x) = cos(x)sin(x)
% evaluated on x = 0:0.01:2*pi;
% - First derivative using O(x2) accurate scheme. Save on HW5 1.dat
% - Second derivative using O(x2) accurate scheme. Save on HW5 2.dat
% - First derivative using O(x4) accurate scheme. Save on HW5 3.dat

dx = 0.01;
x = 0:dx:2*pi;

f = cos(x).*sin(x);

HW5_1 = fprime(f, dx, 2);
HW5_2 = fdoubleprime(f, dx);
HW5_3 = fprime(f, dx, 4);

% figure
% f_dot_exact = cos(2*x);
% f_dot2_exact = -2*sin(2*x);
% plot (x, f,'-k', x, f_dot_exact, '--r', x, f_dot2_exact,':b');
% 
% figure
% plot (x, f,'-k', x, HW5_1, ':r', x, HW5_2, 'b', x, HW5_3,'--m');

save HW5_1.dat HW5_1 -ascii;
save HW5_2.dat HW5_2 -ascii;
save HW5_3.dat HW5_3 -ascii;

end

