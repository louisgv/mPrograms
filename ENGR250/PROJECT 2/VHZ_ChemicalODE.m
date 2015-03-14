function [t_K, y_K] = VHZ_ChemicalODE(ka, kc)
%VHZ_CHEMICALODE This function calculate the dating given two chemical
%Constant
%   Using ODE 45 to solve using initial condition

K_Ar_dating = @(t,x)[
    -(kc+ka).*x(1);
    ka.*x(1);
    kc.*x(1);
    ];


[t_K, y_K]=ode45(K_Ar_dating,[0 10],[1 0 0]);

end

