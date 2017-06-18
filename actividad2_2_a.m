function actividad2_2_a(r1, r2, a1, a2)

%parametros
%r1: llave de paso del F1
%r2: llava de paso del F2
%a1: area basal del recipiente 1
%a2: area basal del recipiente 2

%entrada 
%F0: flujo de entrada en el estanque

%estado
%h1: altura del flujo en el recipiente 1
%h2: altura del flujo en el recipiente 2

%salida
%h1: altura del flujo en el recipiente 1
%h2: altura del flujo en el recipiente 2

%X' =  Ax  +  Bu
%Y  =  Cx  +  Du
%modelo
A = [(-1/(r1*a1)) (1/(a1*r1));(1/(a2*r1)) ((-1/(a2*r1))-(1/(a2*r2)))];
B = [1/a1; 0];
C = [1 0; 0 1];
D = [0;0];

%[num, den] = ss2tf(A,B,C,D);
%H1 = tf(num(1,:), den);
%H2 = tf(num(2,:), den);
%[y,t] = step(H1);
%plot(t,y)

syms s
%Del modelo obtener funciones de transferencia
modelo = C*inv(s*eye(2)-A)*B+D
t = 0:0.1:100;

%Son evaluadas cada una de las funciones de transferencia
y1 = subs(ilaplace(modelo(1)*(1/s)),t);
y2 = subs(ilaplace(modelo(2)*(1/s)),t);

%graficar funcion de transferencia 1
createfigure1(t,y1,'Respuesta impulso unitario funcion de transferencia h1', 1);
pause;
%graficar funcion de transferencia 1
createfigure1(t,y2,'Respuesta impulso unitario funcion de transferencia h2', 1);
pause;
