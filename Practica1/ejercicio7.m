%% Ejercicio 7

nx=[-3:11];
x=zeros(size(nx));
x(4)=2;
x(6)=1;
x(7)=-1;
x(8)=3;

figure;
stem(nx,x);
title("Señal discreta X[n]");
xlabel("Tiempo (Discreto)");
ylabel("Valor");
xlim([-10 10]);

ny1=nx+2;
ny2=nx-1;
fx=fliplr(x);
ny3=-fliplr(nx);
ny4=-fliplr(nx)+1;
ny5=-fliplr(nx-1);

figure;
stem(ny1,x);
title("x retrasada 2");
xlabel("ny)");
xlim([-10 0]);
figure;
stem(ny2,x);
title("x adelantada 1");
xlabel("ny2");
xlim([-10 10]);
figure;
stem(ny3,fx);
title("x invertida");
xlabel("ny3");
xlim([-10 10]);
figure;
stem(ny4,fx);
title("x invertida y luego adelantada 1");
xlabel("ny4");
xlim([-10 10]);
figure;
stem(ny4,fx);
title("x retrasada 1 y luego invertida");
xlabel("ny4");
xlim([-10 10]);