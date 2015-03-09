close all; clear variables; clc

x = input('Pick a number greater than zero: ');
x = ceil(x);


%%% Simple if example
if x == 1 
    %%% If the above statement is true, this block will run
    display('One')
elseif x == 2 || x == 1
    %%% If the above statement is true, and no other statement has been true,
    %%% this block will run
    display('Two')
elseif x == 3
    %%% And so on
    display('Three')
elseif x == 4
    display('Four')
else
    %%% This block will only be run if none of the others above were run
    display('Hrair')
end
%every if statement must match an end statement in your code

% The first statement in an if/elseif/else will always be if. This block will
% run if the statement is true. Elseif statements following if will  run 
% if they are true, and no other statement has evaluated as true. 
% Else will ONLY run if none of the other blocks have run. 

%%% Simple switch example
switch x
    % x is the variable that will be evaluated in this switch statement
    case 1
    % if x == 1, this block will run
        display('One')
    case 2
    % if x == 2, this block will run
        display('Two')
    case 3
    % and so on
        display('Three')
    case 4
        display('Four')
    otherwise
    % an otherwise block will run if no other blocks have run in the switch
    % statement
        display('Hrair')
end
% Every switch statement must match an end statement in your code

%%% Switch statements are very similar to if statements, but are
%%% appropriate when only equalities are used. The switch statement does
%%% not handle inequalities or other logical operations.
        

