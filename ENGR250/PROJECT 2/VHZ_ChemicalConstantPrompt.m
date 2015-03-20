function [l1, l2] = VHZ_ChemicalConstantPrompt(c2,c3)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
s1 = '    Decay Constant of ';
s2 = ' in nano-unit (10^9)? [Enter for Argon-40] ';
s3 = ' in nano-unit (10^9)? [Enter for Calcium-40] ';

l1 = input([s1 c2 s2],'s');
if isempty(l1)
     l1=0.581*(10^-1);
end

l2 = input([s1 c3 s3],'s');
if isempty(l2)
     l2 = 4.962*(10^-1);
end

end

