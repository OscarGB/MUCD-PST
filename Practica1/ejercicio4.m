%% Ejercicio 4

n=[0:32];
x=exp(1i*(pi/8)*n);

figure;
tiledlayout(4,1);
ax1=nexttile;
stem(ax1,n,real(x));
title(ax1,"Real");
ax2=nexttile;
stem(ax2,n,imag(x));
title(ax2,"Imaginaria");
ax3=nexttile;
stem(ax3,n,abs(x));
title(ax3,"Absoluto");
ax4=nexttile;
stem(ax4,n,angle(x));
title(ax4,"Ángulo");