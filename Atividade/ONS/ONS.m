
%==========================================================================
%Autor : Wellington Barbosa
%Descrição : Analise da curva da ONS de DADOS HIDROLÓGICOS / NÍVEIS do periodo de
%           01/01/2022 a 31/12/2022 do reservatório Itaipu utilizando
%           Transformada de Fourier
%==========================================================================


%Limpeza
clc, close all, clear all;

%Leitura do arquivo
curva = dlmread("Dados.csv");
%curva(1) = curva(2);
N = length (curva);
%curva(N) = curva(N-1);
fd = 1/N;
fs = fd;

%Geração da matriz de transformação
lines = 0:N-1;
matrix_base = lines'*lines;
nucleo = exp((-2*pi*i)/N);
matrix_transform = nucleo.^matrix_base;

%Frequencia e tempo
f_real = fd*fs*(0:N-1);
tempo = linspace(1,365,N);

FC = curva*matrix_transform;
spectral= abs(FC)/N;
fase = angle(FC);
%imagesc(tempo,f_real,spectral)
Y = zeros(1,N);
t = 0:N-1;

%Valor medio
Y = FC(1)/N;
A0 = Y;
cont = 0;


for i = 2: floor(N/2) 
    Ak = FC(i)/N*(exp(j*2*(i-1)*pi*t/N));
    Bk = FC(N-i+2)/N*(exp(j*2*(N-i+1)*pi*t/N));
    
    Y = Y + Ak + Bk;
    Y = abs(Y);
    erro = sum((curva.^2 - abs(Y).^2)./curva);
    if((abs(erro)<0.1) &&(cont ==0))
      cont = i;
      Y_contruido = Y;
    end
end

[maximo, position] = max(FC(2:ceil(N/2)));
fd = (position+1)/N;
fs = fd;
T = 1/fs;

plot(t,curva,t,Y_contruido,'-r')

fprintf("Valor medio %f\n",A0 )
fprintf("Período de %f dias\n",T )
fprintf("É necessario %d frequencias para reconstruir o sinal tendo, no maximo, um erro de 10 \n",cont )