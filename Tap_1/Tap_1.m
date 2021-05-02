
%Problema A
Densidad_M = 7850
Densidad_A = 1025
g = 9.8
Vol_sumergido_1 = 750
E = Densidad_A*g*Vol_sumergido_1

%Problema B

Vol_sumergido_2 = (2000/(Densidad_A*g))+750
Peso = Densidad_A*g*Vol_sumergido_2


%Problema C
M = [1 1 1; -10 15 20; 1 -2 1]
b = [2000; 30000; 0]
Mb = [M b]

%Problema D

x = linsolve(M,b)

%Problema E

r1 = sqrt(x(1,1)/(4*10^3*pi))
r2 = sqrt(x(2,1)/(4*10^3*pi))
r3 = sqrt(x(3, 1)/(4*10^3*pi))

A1 = pi*r1^2
A2 = pi*r2^2
A3 = pi*r3^2

%Problema F 

N = [1 1 1; -30 45 60; 2 -4 2]
P = [2 -5 1; -31 49 59; 1 0 11]

%Problema G
B = P*x
PB = [P B]
P_transpuesta = P'
P_transpuesta_2 = P_transpuesta
%Gauss elimination method [m,n)=size(a);
[m,n]=size(P_transpuesta);
for j=1:m-1
    for z=2:m
        if P_transpuesta(j,j)==0
            t=P_transpuesta(j,:);P_transpuesta(j,:)=P_transpuesta(z,:);
            P_transpuesta(z,:)=t;
        end
    end
    for i=j+1:m
        P_transpuesta(i,:)=P_transpuesta(i,:)-P_transpuesta(j,:)*(P_transpuesta(i,j)/P_transpuesta(j,j));
    end
end
a=zeros(1,m);
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+P_transpuesta(s,k)*a(k);
    end
    a(s)=(P_transpuesta(s,n)-c)/P_transpuesta(s,s);
end
disp('Gauss elimination method:');
P_transpuesta
a'


%Problema H

L = doolitle(P_transpuesta_2)
%L*U*x=B
%L*Z=B
Z = linsolve(L,B)
%U*x=Z
%U = Z/x
U = Z/x

%Problema I

L = Crout(P)
%L*U*x=B
%L*z=B
z = linsolve(L,B)
%U*x=z
U = z/x
