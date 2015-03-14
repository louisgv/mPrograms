function [c1, c2, c3] = VHZ_ChemicalPrompt()
%VHZ_CHEMICALPROMPT Summary of this function goes here
%   Detailed explanation goes here

c1 = input('    First Element? [Enter for Potassium-40] ','s');
if isempty(c1)
     c1 = 'Potassium-40';
end

c2 = input('    Second Element? [Enter for Argon-40] ','s');
if isempty(c2)
     c2 = 'Argon-40';
end

c3 = input('    Third Element? [Enter for Calcium-40] ','s');
if isempty(c3)
     c3 = 'Calcium-40';
end

end