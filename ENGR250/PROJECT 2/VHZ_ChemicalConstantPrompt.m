function [k1, k2] = VHZ_ChemicalConstantPrompt(c2,c3)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
p1 = '    Constant of ';
p2 = ' in nano? [Enter for Argon-40] ';
p3 = ' in nano? [Enter for Calcium-40] ';

k1 = input([p1 c2 p2],'s');
if isempty(k1)
     k1=0.581*(10^-1);
end

k2 = input([p1 c3 p3],'s');
if isempty(k2)
     k2 = 4.962*(10^-1);
end

end

