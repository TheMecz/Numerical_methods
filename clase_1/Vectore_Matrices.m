%Vectores y Matrices

%Vectores

clc
u = [2 4 8] %Vector Fila
v = [1;4;8] %Vector Columna
v = [1 4 8]' %Otra forma de poner vector columna
w = [1:10]
w1 = [10:3:50]
w2 = [100:-7:40]
A = [1 2 3; 4 5 6; 7 8 9] %Matriz 3x3
A(3,1) %Muestra un elementod de la matriz
A(1,:) %Muestra la primera columna
A(:,3) %Muestra la columan 3
A(2:3,1:2) %Muestra una submatriz de la matriz A
A(2:3,2:3) %Muestra una submatriz de la matriz A
%Tipos de Matrices
I = eye(3)%Matriz Identidad
D = diag([1 2 3])%Matriz Diagonal
E = 5*eye(3)%Matriz Escalar
A' %Matriz transpuesta
O = zeros(3)%Matirz nula
B = ones(3,3)%Matriz de unos
R = rand(3,3)%Números aleatorios distribuidos uniformemente entre 0 y 1
Rn = randn(3,3)%Los números aleatorios normalmente distribuidos significan 0 y ... var 1 
A
Sum = sum(A)%Suma los elementos de cada columna 
S = sum(A(2,:))%Suma los elemtos de la fila 2
M = max(A)%Muestra los máximos elemntos de cada columna
M_A = max(A(2,:)) %Máximo elemento de la fila 2 
U = triu(A)%Matriz triangular Superior
L = tril(A)%Matriz truangular Inferior
a = [1 2 3] %Vector fila
b = [4 ;5; 6] %Vector columna
c = a + 10 %Adiciona un escalar a un vector
d = a * 10 %Multiplica un escalar y un vector
ab = a * b %Multiplica vector a con el vector b
n = norm(b) %norma de un vector

