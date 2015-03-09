close all; clear variables; clc
display('What are the quadratic coefficients? ');
a = input('What is the coefficient on x^2 ');
b = input('What is the coefficient on x? ');
c = input('What is the constant? ');

tau = b/(2*a);

discrim = tau^2-c/a;
% Calculate the discriminant for conditional solution

if discrim > 0 % 2 solution case
    roots = [-tau-sqrt(discrim),-tau+sqrt(discrim)];
    display(['The roots are x = ',num2str(roots(1)),', ', num2str(roots(2))])

elseif discrim == 0 % 1 solution case
    roots = -tau;
    display(['There is one root at x = ',num2str(roots)])
    
    
else
    prompt = input('There are no real roots. Would you like to see complex roots? Enter yes or no ','s');
    switch lower(prompt)
        case {'yes' 'y'}
             roots = [(-b-sqrt(discrim))/(2*a),(-b+sqrt(discrim))/(2*a)];
             display(['The roots are x = ',num2str(roots(1)),', ', num2str(roots(2))])
        case {'no' 'n'}
             display('Have it your way')
        otherwise
            roots =[(-b-sqrt(discrim))/(2*a),(-b+sqrt(discrim))/(2*a)];
            display(['The roots are x = ',num2str(roots(1)),', ', num2str(roots(2))])
    end
   
end
