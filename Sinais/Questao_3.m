clc, clear all, close all
%Alunos: Alan Fernandes Soares da Silva e Wellington Barbosa

% Implemente o filtro Integrador com Vazamento dado pela equação de diferenças:
%y[n] = a.y[n-1]+(1-a).x[n]
%Serie de Exercícios sobre Matlab


%============================================================================================%
%a. Utilize a=0,80 e aplique o filtro ao áudio do link.

[audio,fs] = audioread("audio_1.wav");% Leitura do audio
a = 0.8;

%Por ser um sistema causal, tem-se que para n<0, y[n] = 0. Portanto, y[0] = a.y[-1] +(1-a).x[0] = (1-a).x[0]. 
%Como o octave começa o vetor no 1, tem-se que y[1] = (1-a).x[1]
Y(1) = (1-a)*audio(1);

%Aplicação do filtro Integrador com Vazamento 
for i = 1:length(audio)-1
  Y(i+1) = a*Y(i) + (1-a)*audio(i+1);
end

%============================================================================================%

%b. Reprodução do áudio com e sem filtro.
sound(Y,fs) % áudio com filtro.
sound(audio,fs)% áudio sem filtro.
%============================================================================================%

%c. Apresentação grafica das amostras  de 1000 a 1200 do áudio filtrado e do áudio não filtrado.
figure
subplot(2,1,1), plot(Y(1000:1200)),title("Áudio filtrado com a = 0.8")
subplot(2,1,2), plot(audio(1000:1200)),title("Áudio não filtrado")

%============================================================================================%
%d.  Utilize a=0,98 e aplique o filtro ao áudio do link.
[audio,fs] = audioread("audio_2.wav"); % Leitura do audio
a = 0.98;

Z(1) = (1-a)*audio(1); %

%Aplicação do filtro Integrador com Vazamento 
for i = 1:length(audio)-1
  Z(i+1) = a*Z(i) + (1-a)*audio(i+1);
end

%============================================================================================%
%e. Reprodução do com e sem filtro.
sound(Z,fs) % áudio com filtro.
sound(audio,fs) % áudio sem filtro.

%============================================================================================%
%f. Apresentação grafica das amostras de 1000 a 1200 do áudio filtrado e do áudio não filtrado.
figure
subplot(2,1,1), plot(Z(1000:1200)),title("Áudio filtrado com a = 0.98")
subplot(2,1,2), plot(audio(1000:1200)),title("Áudio não filtrado")
