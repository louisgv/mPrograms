% Version 2.0
% Near-Final Version! Now the plot can be saved into file!

close all;
clearvars;
clc;
% ---------------------Just some fancy introductions-----------------------
projectName = {'Project:' 'A.R.T'};
teamName = {'Team:' 'VHZ'};
teamMembers = {'Members:' 'Vlad Yarmolik' 'Hai H Nguyen' 'Zachary Burns'};
disp('^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-');
disp(projectName); disp(teamName); disp(teamMembers);
disp('We (VHZ) proudly present our A.R.T MatLab Project');
fprintf('11th of March, 2015.\n\n');
disp('Please prepare your initial inputs:');

isReady = input('    Are you Ready? [Enter]:','s');
while ~isempty(isReady)
    isReady = [];
end
% -------------------------------------------------------------------------
[c1,c2,c3] = VHZ_ChemicalPrompt();

name = {c1, c2, c3};

[l1, l2] = VHZ_ChemicalConstantPrompt(c2,c3);

[t_K,y_K] = VHZ_ChemicalODE(l1, l2);

VHZ_ChemicalPlot(t_K, y_K, name);



