function [ a,b,c ] = VHZ_ChemicalODE()
%VHZ_CHEMICALODE Summary of this function goes here
%   Detailed explanation goes here


ode = @(t, y)[    
    -y(2)-y(3);
    y(1)+0.2*y(2);
    0.2 + y(3)*(y(1)-5.4);
        
    ];

[t, solution] = ode45( ode, [0 5], [1 1 1]);

    a  =    solution(:,1);
    b =    solution(:,2);
    c  =    solution(:,3);

end

