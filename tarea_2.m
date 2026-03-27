% Limpieza de pantalla
clear all
close all
clc

% Creamos una figura ancha con fondo blanco
figure('Color', 'w', 'Position', [100, 100, 1400, 450]);

colorLinea = [0.93 0.84 0.6]; 
colorMarcador = [0.4 0.6 0.8]; 


% 1. Primer Gráfica: Círculo (R=2)

subplot(1,3,1);
t1 = 0:0.01:2*pi;
x1 = 2 * cos(t1);
y1 = 2 * sin(t1);

plot(x1, y1, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x1(end), y1(end), 'o', 'MarkerSize', 7, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal;
axis([-2.2 2.2 -2.2 2.2]);
set(gca, 'Color', 'w', 'XTick', -1.5:0.5:2, 'YTick', -1.5:0.5:1.5);
box off; title(' ');


% 2. Segunda Gráfica: Curva de Lissajous (3 GIROS)

subplot(1,3,2);
t2 = 0:0.01:2*pi;
x2 = cos(t2);
y2 = sin(3*t2);

plot(x2, y2, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x2(end), y2(end), 'o', 'MarkerSize', 7, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal;
axis([-1.1 1.1 -1.1 1.1]);
set(gca, 'Color', 'w', 'XTick', -0.8:0.2:1, 'YTick', -0.8:0.2:1);
box off; title(' ');


% 3. Tercera Gráfica: Espirógrafo 

subplot(1,3,3);
t3 = 0:0.005:2*pi;
% Cambiamos la frecuencia a 20 para replicar la densidad exacta
x3 = 1.5 * cos(t3) - 1.0 * cos(20*t3);
y3 = 1.5 * sin(t3) - 1.0 * sin(20*t3);

plot(x3, y3, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x3(end), y3(end), 'o', 'MarkerSize', 7, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal;
axis([-2.8 2.8 -2.8 2.8]);
set(gca, 'Color', 'w', 'XTick', -2:0.5:2, 'YTick', -2:0.5:2);
box off; title(' ');