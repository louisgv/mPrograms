% Version 1.0
% Interactive Version! Now we can input different stuffs!

close all;
clearvars;
clc;
% ---------------------Just some fancy introductions-----------------------
projectName = {'Project:' 'Whooping Awesome Second Project'};
teamName = {'Team:' 'VHZ'};
teamMembers = {'Members:' 'Vlad Yarmolik' 'Hai H Nguyen' 'Zachary Burns'};
disp('^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-');
disp(projectName); disp(teamName); disp(teamMembers);
disp('We (VHZ) proudly present our MatLab solution for The');
disp('Whooping Awesome Second Project');
fprintf('assigned on the 11th of March, 2015.\n\n');
disp('Please prepare your initial inputs:');

isReady = input('     Are you Ready? [Enter]:','s');
while ~isempty(isReady)
    isReady = [];
end
% -------------------------------------------------------------------------
[c1,c2,c3] = VHZ_ChemicalPrompt();

name = {c1, c2, c3};

[k1, k2] = VHZ_ChemicalConstantPrompt(c2,c3);

[t_K,y_K] = VHZ_ChemicalODE(k1, k2);

VHZ_ChemicalPlot(t_K, y_K, name);



