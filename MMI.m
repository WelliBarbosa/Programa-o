clc
clear all
R = 255;
C = 0.6*10^(-6);
L = 0.5;
Z = 75;
f = @(W) sqrt(1/(R^2) + (W*C - 1/(W*L))^2) - 1/Z
%f = @(W) sqrt(1/(R^2) + (W.*C - 1./(W.*L)).^2)
a = 1;
b = 1000;
x = (1:1:10000);
e = 0.01/100;

for i=1:1000
    xr = a + (b-a)/2;
    w = f(xr);
    f_a = f(a);
    fprintf(' %.10f, %0.10f, %d \n',xr,w,i);
    
    if abs( f(xr) ) < e
        alpha = xr;
        break
    end
    teste = w*f_a;
    if teste > 0
        a = xr;
    else
        b = xr;
    end
end
%fprintf('fprintf: x = %.1f\n',alpha);
