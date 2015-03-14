clear all; close all; clc

ka=0.581*(10.^-10);
kc=4.962*(10.^-10);
[t_K,y_K]=ode45('K_Ar_dating',[0,1e10],[1;0;0]);%Initial Conditions for logarithmic functions

plot(t_K,y_K(:,1),'-g',t_K,y_K(:,2),'-b',t_K,y_K(:,3),'-r',t_K,.5)
title('Potassium-40 Decay');
xlabel('Years (Billion)')
ylabel('Moles of Isotope');
legend('Potassium-40','Argon-40','Calcium-40');
