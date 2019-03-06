a=0;
b=5;
c=a+b;

clear c %BORRA LA VARIABLE c
clear all %BORRA TODAS LAS VARIABLES

%%%%%
% VECTORES
v1 = [1,2,3];
v2 = [4;5;6];

v3 = 3.5 * v1;
v4 = v1 + 4;
v1+v1;
v1+v2; %v1+v2, cuidado con las dimensiones. Deben coincidir

3*v1+50*v1;


v1= [1,2,3];
v2= [4,5,6];
%TRASPONER UN VECTOR:
v3=v2';
v1*v3;



%OPERACIONES PUNTO A PUNTO (poner un punto delante del operando):
v1.*v2;
v1./v2;
v1.^2; %Elevar al cuadrado uno por uno cada uno de los elementos


v3 = 1:1:10;

%DEFINE UN VECTOR QUE CONTENGA LOS NÚMEROS PARES COMPRENDIDOS ENTRE 2 Y 12
v2 = 2:2:12;

%DEFINE UN VECTOR COMO ANTES QUE TENGA LOS NUMEROS 23,22,21,...,1
v5 = 23:(-1):1;


%ACCESO Y MODIFICACION A LA POSICION 7 DEL VECTOR V5:
v5(7) = -9; 

%ACCESO A LA POSICIÓN 2,3,5 DEL VECTOR V5:
v5([2,3,5]);

%ACCESO A LAS POSICIONES 1,2,3,...15:
v5(1:1:15);


%ORDENAR LOS ELEMENTOS DE UN VECTOR DE MENOR A MAYOR (util para mediana,..)
v6 = [-1,1,123,-2,27,-29];
v7 = sort(v6);

%ORDENA LOS ELEMENTOS DE UN VECTOR DE MAYOR A MENOR
v7 = sort(v6,'descend'); %primera forma
v7(end:-1:1); %segunda forma (se queda en el 1)
v8 = -sort(-v6); %tercera forma


%FILTRAR EL VECTOR V6, Y QUEDARME SOLAMENTE CON SUS ELEMENTOS POSITIVOS
v6;
I = find(v6>0); %Vector con los índices de v6 que tienen numeros positivos
v6(I); %Elementos positivos de v6


%MAXIMO DE UN VECTOR:
max(v6);

%MINIMO DE UN VECTOR:
min(v6);

%SUMA TODOS LOS ELEMENTOS DE UN VECTOR:
sum(v6);

%LONGITUD DE UN VECTOR:
L = length (v6);

%CALCULAR LA MEDIA DEL VECTOR V6:
media = sum(v6)/length(v6);


clear all


%%%%%
%MATRICES

A = [1,2,3;4,5,6;7,8,9];
B = [1,0;0,4];

%ACCESO AL ELEMENTO QUE ESTA EN LA FILA 2 Y LA COLUMNA 1 DE LA MATRIZ A:
A(2,1) = -7;

%ACCESO A LA FILA 2 DE LA MATRIZ A:
A(2,:);

%ACCESO A LA COLUMNA 3 DE LA MATRIZ A:
A(:,3);


%MATRICES NOTABLES:
C = zeros(4,3); %Matriz de tamaño 4 filas y 3 columnas llena de ceros.
O = ones (1,2); %Matriz de tamaño 1 fila y 2 columnas llena de unos.
D = eye (4,4); %Matriz diagonal, 1 en la diagonal de tamaño 4x4.
2*eye(4,4); %Matriz diagonall, con 2 en la diagonal de tamaño 4x4.


%TRASPOSICIÓN DE UNA MATRIZ:
D';


%MATRICES A PARTIR DE VECTORES:
v=1:1:3;
w=4:1:6;
M = [v;w;0,0,1]; %Cuidado con las dimensiones


%MATRIZ DIAGONAL CON 1,2 Y 7 EN LA DIAGONAL:
v=[1,2,7];
M=diag(v);

%QUE OCURRE SI HAGO DIAG(V,1):
diag(v,1);
diag(v,-1);
diag(v,-2);

%EXTRAER LOS ELEMENTOS QUE ESTAN POR ENCIMA DE LA DIAGONAL INCLUIDA:
triu(A);

%EXTRAER LOS ELEMENTOS QUE ESTAN ESTRICTAMENTE POR DEBAJO DE LA DIAGONAL:
tril(A,-1); %Primera forma
A-triu(A); %Segunda forma
%Para la tercera forma:
%Voy a construir una matriz diagonal, con los elementos de la diag de A:
D = diag(diag(A));
%Restar a tril D:
tril(A)-D;

%CREAR UNA MATRIZ 5X5 CON LA DIAGONAL LLENA DE +1
diag([1,1,1,1,1]);
A = diag(ones(1,5));

%AHORA, VOY A CAMBIAR LOS ELEMENTOS DE LA SUPRA-DIAGONAL DE A POR 0.5
format short
A = A + 0.5*diag(ones(1,4),1);

%AHORA, VOY A CAMBIAR LOS ELEMENTOS DE LA INFRA-DIAGONAL DE A POR 0.5
format short
A = A + 0.5*diag(ones(1,4),-1);


%MAS FUNCIONES PARA MATRICES
A=[1,2,3;4,5,6;7,8,9];
fliplr(A);
flipud(A);

v = A(:);
v';

det(A); %Calcular el determinante de una matriz
sum(A); %Suma los elementos de cada columna y devuelve un vector


%MULTIPLICACION DE MATRICES (cuidado con las dimensiones)
A*A; %Multiplicacion usual de matrices
A.*A; %Operacion *punto a punto
















































































