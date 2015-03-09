close all;
% clearvars;
clc

% Set 1 ----------------------------------------------
c = -20:0.5:150;
HW2_1 = zeros (2,length(c));
HW2_1(1,:) = c;
for i = 1:length(c)
    HW2_1(2,i) = 9/5*HW2_1(1,i)+32;
end

HW2_2 = 9/5*(-7.75)+32;
HW2_3 = 9/5*(92.725)+32;

% Set 2 ----------------------------------------------

l4 = 2; w4 = 3; h4 = 0:0.5:10;
HW2_4 = [2*(l4*w4 + l4.*h4 + w4.*h4); 
         l4*w4.*h4;
         4*(l4*w4 + l4.*h4 + w4.*h4)];

l5 = 4; w5 = 5; h5 = 0:0.5:6;
HW2_5 = [2*(l5*w5 + l5.*h5 + w5.*h5); 
         l5*w5.*h5;
         4*(l5*w5 + l5.*h5 + w5.*h5)];

l6 = 8; w6 = 7; h6 = 0:0.5:2;
HW2_6 = [2*(l6*w6 + l6.*h6 + w6.*h6); 
         l6*w6.*h6;
         4*(l6*w6 + l6.*h6 + w6.*h6)];

% Set 3 ----------------------------------------------

Test6   = buildbox(l6,w6,h6);
HW2_7   = buildbox(3,4,2);
HW2_8   = buildbox(2,6,2);
HW2_9   = buildbox(19,38,27);
HW2_10  = buildbox(20,4,2);

% Set 4 ----------------------------------------------

HW2_11 = 2300*ones(1,7);
for i = 2:length(HW2_11)
    HW2_11(i) = HW2_11(i-1) + HW2_11(i-1)* 5.25/100;
end

% Set 5 ----------------------------------------------

input5 = [100,500,750,1000,100000];
output5 = zeros (2,length(input5));
for i = 1:length(input5)
   tmp = 0;
   for j = 1:input5(i)    
       tmp = tmp+j;
       output5(1,i) = output5(1,i) + 1/(tmp);
       output5(2,i) = output5(2,i) + 1/(2^(j-1));
   end
end

HW2_12 = output5(1,1);
HW2_13 = output5(2,1);

HW2_14 = output5(1,2);
HW2_15 = output5(2,2);

HW2_16 = output5(1,3);
HW2_17 = output5(2,3);

HW2_18 = output5(1,4);
HW2_19 = output5(2,4);

HW2_20 = output5(1,5);
HW2_21 = output5(2,5);


save HW2_1.dat HW2_1 -ascii;
save HW2_2.dat HW2_2 -ascii;
save HW2_3.dat HW2_3 -ascii;
save HW2_4.dat HW2_4 -ascii;

save HW2_5.dat HW2_5 -ascii;
save HW2_6.dat HW2_6 -ascii;
save HW2_7.dat HW2_7 -ascii;
save HW2_8.dat HW2_8 -ascii;

save HW2_9.dat HW2_9 -ascii;
save HW2_10.dat HW2_10 -ascii;
save HW2_11.dat HW2_11 -ascii;

save HW2_12.dat HW2_12 -ascii;
save HW2_13.dat HW2_13 -ascii;
save HW2_14.dat HW2_14 -ascii;
save HW2_15.dat HW2_15 -ascii;
save HW2_16.dat HW2_16 -ascii;
save HW2_17.dat HW2_17 -ascii;
save HW2_18.dat HW2_18 -ascii;
save HW2_19.dat HW2_19 -ascii;
save HW2_20.dat HW2_20 -ascii;
save HW2_21.dat HW2_21 -ascii;
