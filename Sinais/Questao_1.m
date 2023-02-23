clc, clear all, close all
%Alunos: Alan Fernandes Soares da Silva e Wellington Barbosa

%Gere um sinal x(t) de duração de 10 s, que tem valor nulo nos três segundos 
%iniciais, passa 4s no valor unitário e volta ao valor nulo nos três segundos 
%iniciais. Utilize o tempo de amostragem de 0,025 s. 

%Definição do dominio de tempo
amostragem = 0.025;
t0 = 0;
tf = 10;
t = t0:amostragem:tf;

%Definição do sinal x(t)
x = t.^0;
x(find(t<3)) = 0;
x(find(t>7)) = 0;

%Definição do intervalo de tempo para o sinal x(t)
nx = t;
%Apresente graficamente o sinal x(t), não esqueça de ajustar o eixo do tempo.
figure, plot(nx,x),title("Sinal X")

%============================================================================================%
%a. Gere o sinal y(t) que seja a convolução de x(t) com ele mesmo. 
Nx = length (x);
Ny = Nx+Nx-1;

newX = [x zeros(1,Ny-1)];

%Convolução do sinal x(t) com x(t)
for n = 0:Ny-1
    sum = 0;
    for k = 0:n 
        sum = sum + newX(k+1)*newX(n-k+1);
    end    
    y(n+1) = sum;
end

%Definição do intervalo de tempo para o sinal y(t)
ny = min(nx) + min(nx):amostragem:max(nx)+ max(nx);

%Apresentação grafica dos sinais x(t) e y(t) com o eixo do tempo ajustado para cada sinal.
figure
subplot(2,1,1), plot(nx,x),title("Sinal X")
subplot(2,1,2), plot(ny,y),title("Sinal Y resultado da convolução de X com X")

%============================================================================================%
%b. Gere o sinal  z(t)   que seja a convolução de  x(t) com y(t). 
Nx = length(x);
Ny = length(y);
Nz = Nx+Ny-1;


newX = [x zeros(1,Nz-Nx)];
newY = [y zeros(1,Nz-Ny)];

%Convolução do sinal x(t) com y(t)
for n = 0:Nz-1
    sum = 0;
    for k = 0:n 
        sum = sum + newX(k+1)*newY(n-k+1);
    end    
    z(n+1) = sum;
end

%Definição do intervalo de tempo para o sinal z(t)
nz = min(nx) + min(ny):amostragem:max(nx)+ max(ny);

%============================================================================================%
%Apresentação grafica dos sinais x(t), y(t) e z(t) com o eixo do tempo ajustado para cada sinal.

figure
subplot(3,1,1), plot(nx,x),title("Sinal X")
subplot(3,1,2), plot(ny,y),title("Sinal Y resultado da convolução de X com X")
subplot(3,1,3), plot(nz,z),title("Sinal Z resultado da convolução de X com Y")