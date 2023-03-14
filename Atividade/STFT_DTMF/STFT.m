%==========================================================================
%
%Aluno : Wellington Barbosa
%Descrição : Analisar as frequencias presente em um sinal DTFM
%
%==========================================================================
%Limpeza
clc
close all
clear all

tic
%Leitura
[x , fs] = audioread("1a0.wav");
y = x(:,1);
x  = y;
L = length(x);
t = L/fs;
tempo = linspace(0,t,L);
%Definição do numero de segmento 
N = 5500;

%Definição da matriz de transformação
line = 0:N-1;
matrix_base = line'*line;
nucleo =  exp(-i*pi*2/N);
matrix_transform = nucleo.^matrix_base;

%Definição da matriz de hamming
vetor = linspace(-2,2,N);
w = exp(-vetor.^2/1.5);

%Definição da sobreposição
Ovelap = N/2;

%Calculo do numero de iteração
number_it = floor((L-N)/Ovelap);

%Matriz Heinkel
Matrix_H = zeros(N,number_it);
Y2 = zeros(N,number_it);

%Vetor frequencias
frequency  = fs * (1/N)*(0:N-1);

%Atribuição da janela na madatriz Heinkel
for a=0:1:number_it
        Matrix_H(:,a+1) = (x(1+a*Ovelap:N+a*Ovelap).*w');
end

Y = matrix_transform * Matrix_H;

figure, imagesc(tempo,frequency, log10(abs(Y(1:floor(N/2),:))))
colorbar
%===============================================================================
%Matriz de baixa frequencia entre 600 a 1000
low_frequency =  find(frequency> 600 & frequency<1000);
Y_low_frequency = abs(Y(low_frequency,:)); 
maximoL = max(max(abs(Y_low_frequency)));

figure,subplot(2,1,1), imagesc(tempo, frequency(low_frequency) ,abs(Y_low_frequency)),
title("Baixa Frequencia")
xlabel("Tempo")
ylabel("Frequencia")
colorbar
%Matriz de alta frequencia entre 1000 a 1600
high_frequency =  find(frequency> 1000 & frequency<1600);
Y_high_frequency = abs(Y(high_frequency,:)); 
maximoH = max(max(abs(Y_high_frequency)));
subplot(2,1,2), imagesc(tempo, frequency(high_frequency) ,abs(Y_high_frequency)), 
title("Alta Frequencia")
xlabel("Tempo")
ylabel("Frequencia")
colorbar
pot = zeros(1,number_it);
k = 1;

%Variavel de controle 
control = 0;

%Laço de for
for i =1: number_it
  %Potencia das faixas de baixa e alta frequencias por janela
  potLow(i)= floor(abs(Y_low_frequency(:,i)'*Y_low_frequency(:,i)));
  potHigh(i)= floor(abs(Y_high_frequency(:,i)'*Y_high_frequency(:,i)));
  
  %Caso a i-nesima potencia tenha uma frequencia maior que o valor maximo de cada faixa
  if((potHigh(i) > maximoH) && (potLow(i) > maximoL) && (i >1) )
    %Caso a variavel de controle seja 0
    if( control == 0)
    
      [aL bL] = max(Y_low_frequency(:,i));
      [aH bH] = max(Y_high_frequency(:,i));
      frequency_L(k) = frequency(low_frequency(bL));%
      frequency_H(k) = frequency(high_frequency(bH));%
      k = 1 + k;
      control = 1;
    end
  else
    control = 0;
  end
end

numero = number_frequency(frequency_L,frequency_H);
toc
fprintf ("os numeros são: \n")
numero