% Parámetros
N = 128;
L = 21;
%w0 = 2*pi/sqrt(31);
w0 = 5*pi/2;

% Señales
nn = [0:N-1];
xn = [ones(1,L) zeros(1, N-L)];
ew0 = exp(1j*w0*nn);
cosw0 = cos(w0*nn);

% DTFT señales
plot_dtft(xn, N);
%plot_dtft(xn .* ew0, N);
plot_dtft(xn .* cosw0, N);