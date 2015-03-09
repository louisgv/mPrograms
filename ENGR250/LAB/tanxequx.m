clear variables,
clc

tic
x_upper = tan(0); 
x_lower = exp(pi/2);

x_mid = (x_upper - x_lower)/2;
error = tan(x_mid) - exp(x_mid);

while ( abs(error) > 0)
    if (error > 0)
        x_upper = x_mid;
    else 
        x_lower = x_mid;
    end
    x_mid = (x_upper - x_lower)/2;
    error = tan(x_mid) - exp(x_mid);
end
toc