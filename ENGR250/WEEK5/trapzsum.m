function fin = trapzsum( min, max, f ,n)
%TRAPZSUM Calculate sum of the trapezoids for integral
%   Right hand sum, thus cross the left ends out.
    
    dx = (max-min)/n;
    fin = 0;
    for i=1:n
        fin = fin + dx*(f((i-1)*dx) + f(i*dx))/2;
    end
    
end

