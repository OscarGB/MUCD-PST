%% Ejercicio 3

figure;
t=[-4:1/8:4];
x1=sin(pi*t/4);
x2=cos(pi*t/4);
plot(t,x1,'b');
hold;
plot(t,x2,'g');
stem(t,x1,'b');
stem(t,x2,'g');