function fin = simpzsum( min, max, f ,r, spec )
%SIMPZSUM Calculate the integral using Simpson's trick
% if spec is 9, employ Simpson's 3/8 trick        
    
    fin = f(min)+f(max);
    if spec==9
        n = 3*r;
   
        dx = (max-min)/(3*r);
        
        for i=3:3:n-2
            fin = fin + 2*f(min+i*dx);
        end
        
        if (mod(n,3) ~= 0) 
            n = n-1;
        end
        
        for i=2:3:n
            fin = fin + 3*f(min+i*dx);
        end
        
        if (mod(n,3) ~= 0) 
            n = n-1;
        end
        
        for i=1:3:n
            fin = fin + 3*f(min+i*dx);
        end
       
        fin = fin * dx*3/8;
    else
        n = r*2;
        
        dx = (max-min)/n;
         
        for i=2:2:n-1
            fin = fin + 2*f(min+i*dx);
        end
        
        if (mod(n,2) ~= 0) 
            n = n-1;
        end
        
        for i=1:2:n
            fin = fin + 4*f(min+i*dx);
        end
        
        fin = fin * dx/3;
    end
end