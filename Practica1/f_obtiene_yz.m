%% Función para el ejercicio 6

function [y,z] = f_obtiene_yz(x)
% [y,z] = f_obtiene_yz(x) admite una señal ‘x’ y
% devuelve dos señales, ‘y’ y ‘z’, donde ‘y’ vale 2*x
% y ‘z’ vale (5/9)*(x-3)
y = 2.*x;
z = (5/9).*(x-3);
