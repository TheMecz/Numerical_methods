%condición if - else
clc
a = randi (100,1) %Muestra números aleatorios del 1 al 100
if a < 30
    fprintf ('%d es menor que 30.\n', a)
elseif a > 80
    fprintf ('%d es mayor que 80.\n',a)
else
    X = [num2str(a),'esta entre 30 y 80.'];
    disp(X)
end