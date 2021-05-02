%Operaciones con Matrices
clc
A = [1 2 3; 4 5 6; 7 8 9]; %Matiz 3x3     El ; es para que no se muestre en pantalla la ejecución
A + 10 %Suma un escalar a cada elemento de la matriz
A*3 %Multiplica cada elemento de la matriz por un escalar
sin(A) %Aplica la función seno a cada elemento de la matriz
exp(A) %Aplica la función esponecial a cada elemento de la matriz
inv(A) %Inversa de la matriz
det(A) %Halla el determinante de la matriz
A.^3 %Potencia cada elemento de la matriz
A' %Halla la matriz Traspuesta
B = [1 2 3; 4 5 6; 7 8 9]
A + B %Suma de matrices
A * B %Producto de matrices
A.*B %Producto elemento a elemento de las matrices
A / B %A*inv(B)
A \ B %inv(A)*B