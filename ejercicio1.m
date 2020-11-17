%% Ejercicio 1

figure;
n=[-3:3];
x=2*n;
stem(n,x);

figure;
n=[-5:5];
x=[0 0 x 0 0];
stem(n,x);

figure;
n=[-100:100];
x=[zeros(1,95) x zeros(1,95)];
stem(n,x);
