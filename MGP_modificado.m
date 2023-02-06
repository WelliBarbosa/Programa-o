
clc
clear all
a = [ 1 0 -1 -1 0 0 -1];
a = [ -1 0 0 -1 -1 0 1];
b = [ 0 0 0 0 0 0 0];
n = max(size(a))-1;
f = @(z) z^6 - z^4 - z^3 -1;
x = [0.1];
y = [1];
X = [1] ;
Y = [0];
r = [];
c = 9;
for k = 1 : 10
    X(2) = x(k);
    Y(2) = y(k);
    
    for ii = 1 : n-1
        X(ii+2) = 2*x(k)*X(ii+1) - X(ii)*(x(k)^2+y(k)^2);
        Y(ii+2) = 2*x(k)*Y(ii+1) - Y(ii)*(x(k)^2+y(k)^2);    
    end
    
    u = 0;
    v = 0;
    
    for j=1:n+1
        u = u + a(j)*X(j) - b(j)*Y(j);
        v = v + a(j)*Y(j) + b(j)*X(j);
    end 
    
    ux = 0;
    vx = 0;
    
    for w=2:n+1
        ux = ux + (w-1)*(a(w)*X(w-1) - b(w)*Y(w-1));
        vx = vx + (w-1)*(a(w)*Y(w-1) + b(w)*X(w-1));
    end
    
    h = 0.5 / ( ux^2 + vx^2 );
    Fx(k) = 2*u*ux +2*v*vx;
    Fy(k) = -2*u*vx + 2*v*ux;
    
    dx = -h*Fx(k);
    dy = -h*Fy(k);
    if k>1
        if Fx(k) > Fx(k-1)
          dx = dx/c;
        end
        if Fy(k) > Fy(k-1)
            dy = dy/c;
        end
        
    end
    x(k+1) = x(k) + dx;
    y(k+1) = y(k) + dy;
    
    r(k) = x(k+1) + y(k+1)*i;
   abs(f(r(k)));
    
end 