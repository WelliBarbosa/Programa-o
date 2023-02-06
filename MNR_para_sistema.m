##x = 1.5;
##z = 3.5;
##
##f_1 = @(x,z) x^2 + x*z - 10;
##f_2 = @(x,z) z + 3*x*z*z - 57;
##df1dx = 2*x+z;
##df2dx = 3*z*z;
##
##df1dz = x;
##df2dz = 1 + 6*x*z;
##
##Jacobiano = [df1dx df2dx;df1dz df2dz];
##
##x = x - (f_1(x,z)*df2dz-f_2(x,z)*df1dz) / (det(Jacobiano))
##
##z = z - (f_2(x,z)*df1dx-f_1(x,z)*df2dx) / (det(Jacobiano))
clc 
clear all
x = 0.7
y = 1.5
z = 1.5

f1 = @(x,y,z) x^2+y^2+z^2-9;
f2 = @(x,y,z) x*y*z-1;
f3 = @(x,y,z) x + y -z^2;
X = [x y z]';
#Derivando em relação a x
df1dx = @(x,y,z) 2*x;
df2dx = @(x,y,z) y*z;
df3dx = @(x,y,z) 1;

#Derivando em relação a y
df1dy = @(x,y,z) 2*y;
df2dy = @(x,y,z) x*z;
df3dy = @(x,y,z) 1;

#Derivando em relação a z
df1dz = @(x,y,z) 2*z;
df2dz = @(x,y,z) y*x;
df3dz = @(x,y,z) -2*z;

for k =1 :20
  F = [f1(x,y,z) f2(x,y,z) f3(x,y,z)]';
  derivada = [df1dx(x,y,z) df1dy(x,y,z) df1dz(x,y,z); 
  df2dx(x,y,z) df2dy(x,y,z) df2dz(x,y,z) ; 
  df3dx(x,y,z) df3dy(x,y,z) df3dz(x,y,z)];

  X = X - inv(derivada)*F;
  x = X(1);
  y = X(2);
  z = X(3);
end 


