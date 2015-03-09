function fd = fprime( f, dx, o )
%FPRIME First Derivative Approximation
%   Detailed explanation goes here
    n = length(f);
    fd = zeros(size(f));
    if o==4
        fd(1)=(-3*f(1)+4*f(2)-f(3))/(2*dx); 
        fd(2)=(-3*f(2)+4*f(3)-f(4))/(2*dx);
        for i=3:n-2
            fd(i) = (-f(i+2)+8*f(i+1)-8*f(i-1)+f(i-2))/(12*dx);
        end
        fd(n-1)=(3*f(n-1)-4*f(n-2)+f(n-3))/(2*dx); 
        fd(n)=(3*f(n)-4*f(n-1)+f(n-2))/(2*dx);
    else
        fd(1)= (-3*f(1)+4*f(2)-f(3))/(2*dx);
        for i=2:n-1
            fd(i) = (f(i+1)-f(i-1))/(2*dx); 
        end
        fd(n)=(3*f(n)-4*f(n-1)+f(n-2))/(2*dx);
    end
end

