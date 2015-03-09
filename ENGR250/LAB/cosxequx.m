clear variables,
clc

tic
x_upper = cos(0);
x_lower = 0;

x_mid = (x_upper + x_lower)/2;
error = x_mid - cos(x_mid);

while ( abs(error) > 1e-10)
    if (error > 0)
        x_upper = x_mid;
    else 
        x_lower = x_mid;
    end
    x_mid = (x_upper + x_lower)/2;
    error = x_mid - cos(x_mid);
end
toc