function [X] = RoucheFrobenius(A,b)
[n,m] = size(A);
rA = rank([A b]);
rAb = rank([A b]);
if (rA ~= rAb)
    fprintf('El sistema no tiene solucion ');
elseif (rA == n)
    fprintf('El sistema tiene solución única \n');
X = inv(A)*b;
fprintf(' x1 = %.2f\n', X(1));
fprintf(' x2 = %.2f\n', X(2));
fprintf(' x3 = %.2f\n', X(3));
else
    fprintf('El sistema infinitas soluciones ');
end
end