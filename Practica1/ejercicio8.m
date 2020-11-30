%% Ejercicio 8

nx1 = [0:9];
x1 = [ones(1,5) zeros(1,5)];
nh1 = [0:4];
nh2 = [0:4];
h1 = [1 -1 3 0 0];
h2 = [0 2 5 4 -1];

figure;
stem(nx1,x1);
title("x1");
xlabel("nx1");
xlim([0 9]);

figure;
stem(nh1,h1);
title("h1");
xlabel("nh1");
xlim([0 9]);

figure;
stem(nh2,h2);
title("h2");
xlabel("nh2");
xlim([0 9]);

%% Conmutativa

nx1 = [0:9];
x1 = [ones(1,5) zeros(1,5)];
nh1 = [0:4];
nh2 = [0:4];
h1 = [1 -1 3 0 0];
h2 = [0 2 5 4 -1];

figure;
conv1 = conv(x1, h1);
stem([nx1(1)+nh1(1):nx1(end)+nh1(end)], conv1);
title("Convolución x1*h1");

figure;
conv2 = conv(h1,x1);
stem([nx1(1)+nh1(1):nx1(end)+nh1(end)], conv2);
title("Convolución h1*x1");

%% Distributiva

nx1 = [0:9];
x1 = [ones(1,5) zeros(1,5)];
nh1 = [0:4];
nh2 = [0:4];
h1 = [1 -1 3 0 0];
h2 = [0 2 5 4 -1];

conv_suma = conv(x1, h1+h2);
suma_conv = conv(x1, h1) + conv(x1,h2);

figure;
stem([nx1(1)+nh1(1):nx1(end)+nh1(end)], conv_suma);
title("Convolución x1*(h1+h2)");

figure;
stem([nx1(1)+nh1(1):nx1(end)+nh1(end)], suma_conv);
title("Convolución (x1*h1)+(x1*h2)");

%% Asociativa

nx1 = [0:9];
x1 = [ones(1,5) zeros(1,5)];
nh1 = [0:4];
nh2 = [0:4];
h1 = [1 -1 3 0 0];
h2 = [0 2 5 4 -1];

conv_primero_der = conv(x1, conv(h1, h2));
conv_primero_izq = conv(conv(x1, h1), h2);

figure;
stem([nx1(1)+nh1(1)+nh2(1):nx1(end)+nh1(end)+nh2(end)], conv_primero_der);
title("Convolución x1*(h1*h2)");

figure;
stem([nx1(1)+nh1(1)+nh2(1):nx1(end)+nh1(end)+nh2(end)], conv_primero_izq);
title("Convolución (x1*h1)*h2");

%% Desplazamiento temporal (Propiedad de sistemas LTI)

nx1 = [0:9];
x1 = [ones(1,5) zeros(1,5)];
nh1 = [0:4];
nh2 = [0:4];
nh2 = nh2 + 2;
h1 = [1 -1 3 0 0];
h2 = [0 2 5 4 -1];

figure;
conv1 = conv(x1, h1);
stem([nx1(1)+nh1(1):nx1(end)+nh1(end)], conv1);
title("Convolución x1*h1");
xlim([0 15]);

figure;
conv1 = conv(x1, h1);
stem([nx1(1)+nh2(1):nx1(end)+nh2(end)], conv1);
title("Convolución x1*h2");
xlim([0 15]);

%% Sistemas conectados en serie

nx1 = [0:9];
x1 = [ones(1,5) zeros(1,5)];
nh1 = [0:4];
nh2 = [0:4];
h1 = [1 -1 3 0 0];
h2 = [0 2 5 4 -1];

% Sistema 1:
w = x1 .* (nx1 + 1);
figure;
stem(nx1, w);
title("w");

% Sistema 2:
yg2 = conv(w, h1);

figure;
stem([nx1(1)+nh1(1):nx1(end)+nh1(end)], yg2);
title("yf1");

% Impulso unidad:
u = [1 zeros(1,4)];
nu = [0:4];

% Sistema 1:
hf1 = u .* (nu + 1);
nhf1 = [0:4];

figure;
stem(nhf1, hf1);
title("hf1");

% Sistema 2:
hseries = conv(hf1, h1);

figure;
stem([nu(1)+nh1(1):nu(end)+nh1(end)], hseries);
title("hseries");

% Probar con todo el sistema:
yg2 = conv(x1, hseries);

figure;
stem([nu(1)+nh1(1)+nx1(1):nu(end)+nh1(end)+nx1(end)], yg2);
title("yf2");

%% Sistamas conectados en paralelo

nx1 = [0:9];
x1 = [ones(1,5) zeros(1,5)];
nh1 = [0:4];
nh2 = [0:4];
h1 = [1 -1 3 0 0];
h2 = [0 2 5 4 -1];

xg=[2 zeros(1,4)];
nxg=[0:4];

% Sistema 1:
yga = xg .^ 2;

figure;
stem(nxg, yga);
title("yga");

% Sistema 2:
ygb = conv(xg, h2);
nygb = [nxg(1)+nh2(1):nxg(end)+nh2(end)];

figure;
stem(nygb, ygb);
title("ygb");

% Suma de ambos:
yg1 = [yga zeros(1,4)] + ygb;

figure;
stem(nygb, yg1);
title("yg1");

% Impulso unidad:
u = [1 zeros(1,4)];
nu = [0:4];

% Sistema 1:
hg1 = u .^ 2;

figure;
stem(nu, hg1);
title("hg1");

% Paralelo:
hparallel = hg1 + h2;

figure;
stem(nu, hparallel);
title("hparallel");

% Todo el sistema como úna única convolución
yg2 = conv(xg, hparallel);

figure;
stem([nxg(1)+nh2(1):nxg(end)+nh2(end)], yg2);
title("yg2");







