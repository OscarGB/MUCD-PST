%% a)
% Parámetros
N = 1024;
L = 32;
w0 = 2*pi/sqrt(31);

%Señales
nn = [0:N-1];
xn = exp(1j*w0*nn);
ventana = [ones(1,L) zeros(1, N-L)];

%DTFT
plot_dtft(xn .* ventana, N);

%% b)
N = 1024;
Ls = [32 64 128 256];
w0 = 2*pi/sqrt(31);


nn = [0:N-1];
ew0 = exp(1j*w0*nn);

for L = Ls
    xn = [ones(1,L) zeros(1, N-L)];
    plot_dtft(xn, N);
    plot_dtft(xn .* ew0, N);
end

%% c)
N = 1024;
L = 32;
w0 = 2*pi/sqrt(31);


nn = [0:N-1];
ew0 = exp(1j*w0*nn);

rectangular = [ones(1,L) zeros(1, N-L)];
hanning = hann(L);

plot_dtft(rectangular, N);
plot_dtft(hanning, N);

plot_dtft(ew0 .* rectangular, N);
plot_dtft(ew0 .* hanning, N);


wvtool(hanning);
