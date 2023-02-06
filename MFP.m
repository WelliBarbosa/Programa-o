clc
clear all
R = 255;
C = 0.6*10^(-6);
L = 0.5;
Z = 75;
f = @(W) sqrt(1/(R^2) + (W*C - 1/(W*L))^2) - 1/Z
xl = 1;
xu = 1000;
e = 0.1/100;
fl = f(xl);
fu = f(xu);
il = 0;
iu = 0;
xr = xu -fu*(xl -xu)/(fl - fu);
iter = 0;
do 
  xrold = xr;
  xr = xu -fu*(xl -xu)/(fl - fu);
  fr = f(xr);
  iter = iter +1 ;
  fprintf(' %.10f, %0.10f, %d \n',xr,f(xr),iter);
  teste = fl*fr;
 
    if teste< 0 
        xu = xr;
        fu = f(xu);
        iu = 0;
        il = il +1;
        if il >=2
          fl = fl/2;
        end
    else
        xl = xr;
        fl = f(xl);
        il = 0;
        iu = iu +1;
        if iu >=2
          fu = fu/2;
        end
    end
    abs(fr)
until(abs(fr) < e )
fprintf(' %.10f, %0.10f, %d \n',xr,f(xr),iter);
%fprintf('fprintf: x = %.1f\n',alpha);
