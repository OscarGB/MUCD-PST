%% Ejercicio 6c

n=[0:15];
x1=4*sin((pi/4)*n);
[y1,z1]=f_obtiene_yz(x1);
stem(n,x1);
hold on;
stem(n,y1,'r');
stem(n,z1,'g');
hold off;
