% Version 0.0
% Initializing, taken from the 1st project.

close all;
clearvars;
clc;

projectName = {'Project:', 'Whooping Awesome Second Project'};
teamName = {'Team:', 'VHZ'};
teamMembers = {'Members:','Vlad Yarmolik','Hai H Nguyen','Zachary Burns'};
% table = {'Cannon no.', 'Time', 'Velocity'; '0','','';'1','','';'2','',''};
% final = {'Total Time',''};
disp('^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^');
disp(projectName); disp(teamName); disp(teamMembers);
disp('We (VHS) proudly present our MatLab solution for The');
disp('Whooping Awesome Second Project');
fprintf('assigned on the 11th of March, 2015.\n\n');

disp('Please prepare your initial inputs:');

isReady = input('     Are you Ready? [Enter]:','s');
while ~isempty(isReady)
    isReady = [];
end

