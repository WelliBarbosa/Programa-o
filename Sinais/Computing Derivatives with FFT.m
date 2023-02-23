clear all; clc; close all;

%Wellington Barbosa

n = 64;
L = 30; 
dx = L/n;
x = -L/2:dx:L/2 - dx;

f = sin(x); %Função
df = cos(x) ;%Derivada

for kappa = 1:length(df) - 1
  dfFD(kappa) = (f(kappa +1)- f(kappa))/dx;
end
dfFD(end + 1) = dfFD(end);

fhat = fft(f);
kappa = (2*pi/L) * [-n/2:n/2-1];
kappa = fftshift(kappa);
dfhat = i*kappa.*fhat;
dfFFT = real(ifft(dfhat));

figure
plot(x,f)

figure
plot(x,df,'k','LineWidth',4), hold on
plot(x,dfFD,'b--','LineWidth',3)
plot(x,dfFFT,'c-','LineWidth',3)
##set(gca,'FontSize',32);
##set(l1,'FontSize',32);
##set(gcf,'Position',[1500 200 1500 700]);