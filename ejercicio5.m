%% Ejercicio 5

n=[0:30];
x1=sin((pi/4)*n);
x2=cos((pi/7)*n);

y1=x1+x2;
y2=x1-x2;
y3=x1.*x2;
y4=x1./x2;
y5=2*x1;
y6=x1.^x2;

figure;
stem(n,x1);
title("x1");
figure;
stem(n,x2);
title("x2");
figure;
stem(n,y1);
title("suma");
figure;
stem(n,y2);
title("resta");
figure;
stem(n,y3);
title("multiplicación");
figure;
stem(n,y4);
title("división");
figure;
stem(n,y5);
title("2*x1");
figure;
stem(n,y6);
title("potencia");