%%% Simple for loop - Series
close all; clear variables; clc
%First, let's examine loop behavior
display('First loop')
for i = 1:10
    display(i)
end
% The value for i changes each time through the loop. The loop runs 10
% times because the vector 1:10 has 10 elements
fprintf('\n\n\n')


display('Second loop')
% Next, let's do a simple series, adding together the number 1 four times
sum1 = 0; 
% Initialize sum. We should start a sum at zero
for i = 1:4
    %%% We use 1:4 because we intend to add 4 numbers togethere
    
    display(sum1) % look at the value of sum before it changes, for our benefit
    
    sum1 = sum1 + 1;
    % Take the old value of the sum and add one to it
    
    display(sum1) % Show the new value of Sum. Display commands unnecessary, 
    % but help show what's going on
    
end
% Code will loop four times, and each time sum will increase in value by 1
fprintf('\n\n\n')

% Now, let's add the series 1 + 2 + 3 + 4 + 5 + .... + 10

display('Third loop')
sum2 = 0;
% Again, initialize sum
for i = 1:10
    % i = 1:10 since we intend to add 10 numbers together
    
    display(sum2) % display for our benefit
    
    sum2 = sum2 + i;
    % Here, he want to take the old value of the sum and add i to it, which
    % is both the term in the series above AND the number of times we've
    % gone through the loop so far.
    
    display(sum2) 
end
    