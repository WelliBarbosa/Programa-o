clc
clear all
%a = [ -1 0 0 -1 -1 0 1];
%a = [ 1 6 17 22 14];
a =[ 14 22 17 6 1];
%a = [ 1
b = [ 0 0 0 0 0 0 0];
%f = @(z) z^6-z^4-z^3-1;
%f = @(z) z^4 +2*z^2 +1
lista_x = [];
lista_y =[];  
lista_z = [];
n = 4;

x = [10];
y = [1];
X = [1] ;
Y = [0];
f = @(z) (z^4 + 6*z^3 + 17*z^2 + 22*z +14);
for k = 1 : 20
  lista_x(k) = x(k);
  lista_y(k) = y(k);
  r = x(k) + y(k)*i;
  lista_z(k) = abs(r);
    X(2) = x(k);
    Y(2) = y(k);
    
    for ii = 1 : n+1
        X(ii+2) = 2*x(k) *X(ii+1) - X(ii)*(x(k)^2+y(k)^2);
        Y(ii+2) = 2*x(k) *Y(ii+1) - Y(ii)*(x(k)^2+y(k)^2);    
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
    Fx = 2*u*ux +2*v*vx;
    Fy = -2*u*vx + 2*v*ux;
    
    dx = -h*Fx;
    dy = -h*Fy;
    
    x(k+1) = x(k) + dx;
    y(k+1) = y(k) + dy;
    
    r = x(k+1) + y(k+1)*i;
   
    
end 
