function [t_K, y_K] = VHZ_ChemicalODE(l1, l2)
%VHZ_CHEMICALODE This function calculate the dating given two chemical
%Constant
%   Using ODE 45 to solve using initial condition

y = @(t,K)[
    -(l2+l1).*K(1);
    l1.*K(1);
    l2.*K(1);
    ];


[t_K, y_K]=ode45(y,[0 10],[1 0 0]);

end

