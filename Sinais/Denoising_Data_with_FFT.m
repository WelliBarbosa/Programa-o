clear all, close all, clc

%% Criação de um sinal simples com duas frequencias
dt = .001;
t = 0:dt:1;
fclean = sin(2*pi*1*t) + sin(2*pi*120*t);
f = fclean + 2.5*randn(size(t));

figure; set(gcf,'Position',[150 200 2000 1200])
subplot(3,1,1)
plot(t,f,'c', 'LineWidth',1), hold on 
plot(t,fclean,'k', 'LineWidth',0.75)
l1 = legend('Ruido', 'Limpo'); set(l1,'FontSize',32)
ylim([-10 10]); set(gca,'FontSize',32)


%%Calculo da Transformada Rapida de Fourier(FFT)
n = length(t);
fhat = fft(f,n);
PSD = fhat.*conj(fhat)/n;
freq = 1/ (dt*n)*(0:n);
L = 1:floor(n/2);

subplot(3,1,3); set(gca,'FontSize',16)
plot(freq(L), PSD(L),'c','LineWidth',3), hold on
set(gca,'FontSize',32)

%% Uso do PSD para filtar o ruido
indices = PSD>75; #Encontra todas as frequencias com potencia alto
PSDclean = PSD.* indices; % Zero para todas as outras
fhat = indices.* fhat;
ffilt = ifft(fhat); % FFT inversa para sinal filtrado no tempo

plot(freq(L),PSDclean(L),'-','Color',[.5 .1 0],'LineWidth',2.5)
l1 = legend('Ruido', 'Filtrado'); set(l1,'FontSize',32)

subplot(3,1,2); set(gca,'FontSize',16)
plot(t,ffilt,'-','Color',[.5 .1 0], 'LineWidth',2.5)
l1 = legend('Filtrado'); set(l1,'FontSize',32)
ylim([-10 10]); set(gca, 'FontSize',32)
