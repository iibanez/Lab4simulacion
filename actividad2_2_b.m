function actividad2_2_b(r1, r2, c1, c2)

%parametros
%r1: resistencia 1
%r2: resistencia 2
%c1: capacitancia del condensador 1
%c2: capacitancia del condensador 2

%entrada 
%Vs voltaje de la fuente

%estado
%Vc1: voltaje del condensador 1
%Vc2: voltaje del condensador 2

%salida
%Vc1: voltaje del condensador 1
%Vc2: voltaje del condensador 2

%parametros
%r1
%r2
%a1
%a2

%entrada F0

%estado
%l1 y l2

%X' =  Ax  +  Bu
%Y  =  Cx  +  Du
%modelo
A = [(-1/(r1*c1)) 0;0 (-1/(r2*c2))];
B = [(1/(c1*r1)); (1/(c2*r2))];
C = [1 0; 0 1];
D = [0;0];

syms s
%Del modelo obtener funciones de transferencia
modelo = C*inv(s*eye(2)-A)*B+D
t = 0:0.1:100;

%Son evaluadas cada una de las funciones de transferencia
y1 = subs(ilaplace(modelo(1)*(1/s)),t);
y2 = subs(ilaplace(modelo(2)*(1/s)),t);

%graficar funcion de transferencia 1
createfigure1(t,y1,'Respuesta impulso unitario funcion de transferencia Vc1', 2);
pause;
%graficar funcion de transferencia 1
createfigure1(t,y2,'Respuesta impulso unitario funcion de transferencia Vc2', 2);
pause;

