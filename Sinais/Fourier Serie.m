clear all; close all; clc
%Wellington Barbosa
##h2o = double(imread("1-fig_1_h2o2.jpg"));
##z = h2o(6,:);
figure
set(gcf,'Position',[150 200 2000 1200])
pause(5)
%Definição do Dominio
L = pi;
N = 1280;
dx = 2*L/(N-1);
x = -L:dx:L;

gri = -L:0.1:L;
yGrid = 0:0.3:1.5;
%Define hat funcion
f = 0*x;
##f = z;
f(N/4:N/2) = 1;
f(N/2+1:3*N/4) =1;
subplot(2,1,1)
plot(x,f,'-k','LineWidth',3.5)
grid on
ylim([-0.5 1.5])
xlim([-3 3])

%Compute Fourier series
CC = jet(50);
A0 = sum(f.*ones(size(x)))*dx/pi;
fFS = A0/2;

for k = 1:50
  A(k) = sum(f.*cos(pi*k*x/L))*dx/pi;
  B(k) = sum(f.*sin(pi*k*x/L))*dx/pi;
  fFS = fFS + A(k)*cos(k*pi*x/L) + B(k)*sin(k*pi*x/L);
  max(fFS);
  subplot(2,1,2)
  plot(x,fFS, '-', 'Color',CC(k,:),'LineWidth',2),hold on;
  grid on
  ylim([-0.5 1.5])
  xlim([-3 3])

  pause(.3)
end

##%% Plot amplitudes
##figure; set(gcf,'Position',[150 200 2000 1200])
##clear ERR
##clear A
##fFS = A0/2;
##A(1) = A0/2;
##ERR(1) = norm(f-fFS);
##kmax = 100;
##
##for k = 1 :kmax
##  A(k+1) = sum(f.*cos(pi*k*x/L))*dx/pi;
##  B(k+1) = sum(f.*sin(pi*k*x/L))*dx/pi;
##  fFS = fFS + A(k+1)*cos(k*pi*x/L) + B(k+1)*sin(k*pi*x/L);
##  ERR(k+1) = norm(f-fFS)/norm(f);
##end
##
##thresh  = median(ERR) * sqrt(kmax) * 4/sqrt(3);
##r = max(find(ERR>thresh));
##r =7;   