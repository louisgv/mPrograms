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

v0 = input('     ');
if isempty(v0)
    v0 = 25;
end

d = 25;
% d = input ('    The Distance d from the #0 Cannon: [Enter for 25]');
% if isempty(d)
%     d = 25;
% end

t_1 = 2;

theta1 = 60;

theta2 = 135;

% t_1 =     input('    The Initial Time of the #1 Cannon: ');
% theta1 = input('    The Initial Angle of the #1 Cannon: ');
% theta2 = input('    The Initial Angle of the #2 Cannon: ');
% v0 = 25;



