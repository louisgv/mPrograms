% Version 2.0

close all;
clearvars;
clc;

result = 'result.xlsx';
projectName = {'Project:', 'Three Cannons Firework'};
teamName = {'Team:', 'TEAM TWO'};
teamMembers = {'Members:','Hai H Nguyen','Pavel Moskvitin','Zachary Burns'};
table = {'Cannon no.', 'Time', 'Velocity'; '0','','';'1','','';'2','',''};
final = {'Total Time',''};
disp('^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^');
disp(projectName); disp(teamName); disp(teamMembers);
disp('We (Team Two) proudly present our MatLab solution for The');
disp('Three Cannons Firework project which G.1 corporation had');
fprintf('assigned on the 16th of February, 2015.\n\n');

disp('Please prepare your initial inputs:');

isReady = input('     Are you Ready? [Enter]:','s');
while ~isempty(isReady)
    isReady = [];
end
fprintf('\n-------------------------------------------------------------------------\n');
disp('^ y(meters)-----------------------\---/----------------------------------');
disp('|----------------------------------\-/-----------------------------------');
disp('|---------------------------------*-#-*----------------------------------');
disp('|-------------------------*--------/*\-------*---------------------------');
disp('|-------------------*-------------/-*-\------------*---------------------');
disp('|--------------*--------------------*-------------------*----------------');
disp('|----------*------------------------*------------------------*-----------');
disp('|-------*---------------------------*---------------------------*--------');
disp('|--___//__-----------------------__| |__-----------------------__\\___---');
disp('|__|  1  |_______________________|  0  |_______________________|  2  |___');
disp('0-----<=============================|=============================|=====>');
disp('------25----------------------------0-----------------------------25-----');
disp('-----------------------------------------------------------------x(meters)');
fprintf('-------------------------------------------------------------------------\n\n');
disp('Please Look at the Diagram, then let us know:');

v0 = input('    The Initial Velocity of the #0 Cannon: (Greater than 22, Enter for 25) ');
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

leftPath = input('    Animation with Path? [Y/N]: ', 's');
if (leftPath~= 'Y')
    leftPath = 'N';
end

x=[1;1;1;1];

% v1=x(1);
% v2=x(2);
% t2=x(3);
% t0=x(4):

% while norm(cannonfunc(v0, x(1), x(2), t_1, x(3), x(4), theta1, theta2, d)) > 1e-9

% while (norm(cannonfunc(x, v0, t_1, theta1, theta2, d))) > 1
for i = 1:5
        deltax = cannonjacob(x, v0, t_1, theta1, theta2)...
                \-cannonfunc(x, v0, t_1, theta1, theta2, d);
        x = deltax + x;
end

disp(norm(cannonfunc(x, v0, t_1, theta1, theta2, d)))
delta_t1 = x(4)- t_1; %When to fire cannon 1 when cannon 0 fires at t=0
delta_t2 = x(3)- t_1; %When to fire cannon 2 when cannon 0 fires at t=0


t=0:1/24:t_1;

x1 = x(1)*cosd(theta1)*t;
y1 = x(1)*sind(theta1)*t-.5*9.81*t.^2;

x2 = x(2)*cosd(theta2)*(t+delta_t2) + 2*d;
y2 = x(2)*sind(theta2)*(t+delta_t2)-.5*9.81*(t+delta_t2).^2;
 
x3 = d;
y3 = v0*(t+delta_t1)-.5*9.81*(t+delta_t1).^2;

Figuresize = figure('Position', [0, 0, 1300, 550]); %Increases the size of the Figure Window for easier viewing
title('Collision of Three Fireworks')
xlabel('X-Distance (m)')
ylabel('Height (m)')
grid on

for i=1:length(t)
    if (leftPath == 'Y')
    	hold on
    end
    plot(x2(i),y2(i),'.',x1(i),y1(i),'.',x3,y3(i),'.','markersize',30);
    axis([0 2*d 0 40])
    if (leftPath == 'Y')
        hold off
    end
    getframe;
end

% disp(deltax)

delete ('Projectile_Plot.jpg');
saveas(Figuresize,'Projectile_Plot.jpg'); %Saves picture of graph

disp(' ')
disp(['****Given that the middle Projectile is launched at t=0, the collision occurs after ' num2str(x(4)) ' seconds : ****'])
disp(' ')
disp(['-Launch Projectile 1 with a Velocity of   ' num2str(x(1)) ' m/s ' '  @  t= ' num2str(delta_t1) 's'])
disp(['-Launch Projectile 2 with a Velocity of   ' num2str(x(2)) ' m/s ' '  @  t= ' num2str(x(4)-x(3)) 's'])

line1=['Projectile 1 Velocity = ' num2str(x(1)) ' m/s ' '    @  t= ' num2str(delta_t1)]; 
line2=['Projectile 2 Velocity = ' num2str(x(2)) ' m/s ' '    @  t= ' num2str(x(4)-x(3))];
line3='    ';
line4='                        We accept cash or check!';
line5=['Middle Projectile Velocity = ' num2str(v0) ' m/s' '              @  t=0 '];
line6=['***The collision occurs after ' num2str(x(4)) ' seconds...***']; 

info_box=msgbox({line6,line3,line3,line1,line3,line2,line3,line5,line3,line3,line4},'INFO from TEAM 2');
orange=[1 .5 0]; % RGB scale, creates the color orange
set(info_box,'color',orange);

tableResult = [0, v0; t_1, x(1); x(3), x(2)];

warning('off','MATLAB:xlswrite:AddSheet')
delete (result);

xlswrite(result,teamName,1,'A1');
xlswrite(result,teamMembers,1,'A2');

xlswrite(result,table,1,'A3');
xlswrite(result,tableResult,1,'B4');

xlswrite(result,final,1,'A7');
xlswrite(result, x(4),1,'B7');

