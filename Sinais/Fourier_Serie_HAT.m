clear all; close all; clc
figure
set(gcf,'Position',[150 200 2000 1200])

%Definição do Dominio
L = pi;
N = 1280;
dx = 2*L/(N-1);
x = -L:dx:L;

%Define hat funcion
f = 0*x;
f(N/4:N/2) = 4*(1:N/4+1)/N;
f(N/2+1:3*N/4) =1 -  4*(0:N/4-1)/N;
plot(x,f,'-k','LineWidth',3.5), hold on

%Compute Fourier series
CC = jet(20);
A0 = sum(f.*ones(size(x)))*dx/pi;
fFS = A0/2;

for k = 1:10
  A(k) = sum(f.*cos(pi*k*x/L))*dx/pi;
  B(k) = sum(f.*sin(pi*k*x/L))*dx/pi;
  fFS = fFS + A(k)*cos(k*pi*x/L) + B(k)*sin(k*pi*x/L);
  plot(x,fFS, '-', 'Color',CC(k,:),'LineWidth',2);
  grid on
  #xticks(x)
  pause(.1)
end

%% Plot amplitudes
figure; set(gcf,'Position',[150 200 2000 1200])
clear ERR
clear A
fFS = A0/2;
A(1) = A0/2;
ERR(1) = norm(f-fFS);
kmax = 100;

for k = 1 :kmax
  A(k+1) = sum(f.*cos(pi*k*x/L))*dx/pi;
  B(k+1) = sum(f.*sin(pi*k*x/L))*dx/pi;
  fFS = fFS + A(k+1)*cos(k*pi*x/L) + B(k+1)*sin(k*pi*x/L);
  ERR(k+1) = norm(f-fFS)/norm(f);
end

thresh  = median(ERR) * sqrt(kmax) * 4/sqrt(3);
r = max(find(ERR>thresh));
r =7;   