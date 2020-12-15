function plot_dtft(h, N)
% PLOT_DTFT plot a DTFT por a signal h in N equally spaced frecuencies
[H, W] = dtft(h,N);
% Normalize frecuencies
W = W./pi;
figure;
subplot(2,1,1);
plot(W, abs(H));
title("Magnitude Response");
xlabel("Normalized Frequency");
ylabel("|H(w)|");
subplot(2,1,2)
% En grados
plot(W, angle(H) * 360 / (2*pi));
title("Phase Response");
xlabel("Normalized Frequency");
ylabel("Degrees");
