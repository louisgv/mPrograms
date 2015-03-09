close all; 
% clear variables; 
clc

A = [11,12,13,14; 21,22,23,24; 31,32,33,34; 41,42,43,44];
B = [4,5,8,9; 6,7,10,11; 12,13,16,17; 14,15,18,19];

% 1st Set

HW1_1 = A(2,3);
HW1_2 = B(:,2:3);
HW1_3 = A(3:4,:);
HW1_4 = A(2:4,1:3);

% 2nd Set

HW1_5 = A*B;
HW1_6 = A.*B;
HW1_7 = A/B;
HW1_8 = A./B;

% 3rd Set

xa = -10:0.1:10;
HW1_9 = 1-sin(xa).^2;

xb = 0:pi/20:2*pi;
HW1_10 = exp(1i*xb) + 1;

xc = 0:0.1:200;
HW1_11 = (1+1./xc).^xc;

% 4th Set

xdr = -8:0.1:8;
ydr = -6:0.05:6;
[xd,yd] = meshgrid(xdr,ydr);
fd = sqrt(xd.^2 + yd.^2);

xer = 0:0.1:1000;
yer = 0:pi/20:2*pi;
[xe,ye] = meshgrid(xer,yer);
fe = ((1+1i*ye./xe).^xe+1);

HW1_12 = fd(:,111);
HW1_13 = fd(201,:);
HW1_14 = fd(:,:);

HW1_15 = fe(:,5001);
HW1_16 = fe(:,10001);
HW1_17 = fe(21,:);
HW1_18 = fe(41,:);

!=
%f(ceil(8*end/12),:);

save HW1_1.dat HW1_1 -ascii;
save HW1_2.dat HW1_2 -ascii;
save HW1_3.dat HW1_3 -ascii;
save HW1_4.dat HW1_4 -ascii;

save HW1_5.dat HW1_5 -ascii;
save HW1_6.dat HW1_6 -ascii;
save HW1_7.dat HW1_7 -ascii;
save HW1_8.dat HW1_8 -ascii;

save HW1_9.dat HW1_9 -ascii;
save HW1_10.dat HW1_10 -ascii;
save HW1_11.dat HW1_11 -ascii;

save HW1_12.dat HW1_12 -ascii;
save HW1_13.dat HW1_13 -ascii;
save HW1_14.dat HW1_14 -ascii;
save HW1_15.dat HW1_15 -ascii;
save HW1_16.dat HW1_16 -ascii;
save HW1_17.dat HW1_17 -ascii;
save HW1_18.dat HW1_18 -ascii;
