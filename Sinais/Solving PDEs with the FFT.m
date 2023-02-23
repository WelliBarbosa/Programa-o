clear all; close all; clc
a = 1; %Constante 
L = 100; % Tamanho do dominio
N = 1000; % Numero de discretização de pontos
dx = L/N;
x = -L/2:dx:L/2 - dx; % Definição do dominio

%Definição do numero de ondas discretos
kappa = (2*pi/L)*[-N/2:N/2 - 1];
kappa = fftshift(kappa);

%Condições iniciais
u0 = 0*x;
u0((L/2 - L/10)/dx:(L/2 + L/10)/dx) = 1;

%Simulação Fourier no dominio da frequencia
t = 0:0.1:20;
[t , uhat] = ode45(@(t,uhat) rshHeat(t,uhat,kappa,a) ,t,fft(u0));

for k = 1:length(t) %iFFT para returnar para o dominio do espaço
  u(k,:) = ifft(uhat(k,:));
end

figure, h = waterfall(x,t(1:10:end),(abs(u(1:10:end,:))));
set(h,'LineWidth',5,'FaceAlpha',.5);
colormap(flipud(jet)/1.5);
set(gca,'FontSize',18);
xlabel('Space'); ylabel('Time'); zlabel('Temperatura');
