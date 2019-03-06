% Practica de introducción a Matlab
v1=[1,2,3];
v2=[4;5;6];
z = zeros(1,5); %Vector de seros
o = ones (4,1);
v3= v1*3
v4= [1,2,3,4];
%Las dimensiones de los vectores deben coincidir, no puedo sumar v1 y v4.
v3= v1'; %traspuesta
r= v1*v3;
v5=[4,5,6];
v6= v1.*v5;
v6= v1./v5;
v6= 10:-2:2;
v6(2)=27; %El subindice empieza en 1
I=[2,3]; %vector indice
v6(I)
v8 = [2,3,4,6,7,8,4,3];
v8(2:2:end) %Extraemos los componentes pare xd
v9= [3;5;6;1;-1;0]
v11= sort (v9);
v10=v13(end:-1:1) 


v12= sort (v9)
v13= [-1,2,123,-2, 27,-29];
v13(find(v13>0))
suma= sum(v13);
%Calculo de la media
media= suma/length(v13);

%Maximo y minimo

maximo=max(v13);
minimo=min(v13);

%MATRIZ

A= [1,2,3; 4,5,6 ; 7,8,9]

%modificar el elemento : fila 1, col 2

A(1,2)=9.0;

A= eye(3) %MAtriz diagonal 3x3

Z = zeros (4,4) %Matriz de ceros 4x4
A= 27*eye(3) % matriz identidad * 27

%Extraer la primera fila de A
A(1,:);

%Extraer la primera columna 

%Multiplicación de matrices
A*A



