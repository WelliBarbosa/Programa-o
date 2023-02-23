clc; close all; clear all;
l = 1;

for t = -6:0.1:6
  x = 0;
  
  for k = -400:400
    if (k == 0)
      x = 0;
    else
      x = x + (-(1.5/(2*j*pi*k))*(exp(-j*k*pi) - 1 + exp(-j*k*pi) - exp(-2*j*k*pi)))*exp(j*k*pi*t);
    end
  end
  y(l) = imag(x) ;
  z(l) = real(x);
  l = l + 1;
  
end

t = -6:0.1:6;
plot(t,y)