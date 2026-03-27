% Limpieza de pantalla
clear all
close all
clc

% Creamos una figura amplia con fondo blanco para 10 subgráficas
figure('Color', 'w', 'Position', [50, 50, 1600, 700]);

colorLinea = [0.93 0.84 0.6]; % Color crema/dorado
colorMarcador = [0.4 0.6 0.8]; % Color azul

% ==========================================
% a) t ∈ [-2, 2]
% ==========================================
subplot(2,5,1);
t_a = -2:0.01:2;
x_a = 2 .* t_a;
y_a = (t_a - 3.*t_a) ./ 3; % Nota: si era t al cubo, usa t_a.^3
plot(x_a, y_a, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_a(end), y_a(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('a)');

% ==========================================
% b) t ∈ [0, 10]
% ==========================================
subplot(2,5,2);
t_b = 0:0.01:10;
x_b = t_b - 3.*sin(t_b);
y_b = 4 - 3.*cos(t_b);
plot(x_b, y_b, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_b(end), y_b(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('b)');

% ==========================================
% c) t ∈ [0, 2π]
% ==========================================
subplot(2,5,3);
t_c = 0:0.01:2*pi;
x_c = 3.*cos(t_c) - cos(3.*t_c);
y_c = 4.*sin(3.*t_c);
plot(x_c, y_c, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_c(end), y_c(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('c)');

% ==========================================
% d) t ∈ [0, 2π]
% ==========================================
subplot(2,5,4);
t_d = 0:0.005:2*pi;
x_d = cos(t_d) + 0.5.*cos(7.*t_d) + (1/3).*sin(17.*t_d);
y_d = sin(t_d) + 0.5.*sin(7.*t_d) + (1/3).*cos(17.*t_d);
plot(x_d, y_d, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_d(end), y_d(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('d)');

% ==========================================
% e) t ∈ [0, 2π]
% ==========================================
subplot(2,5,5);
t_e = 0:0.005:2*pi;
x_e = 17.*cos(t_e) + 7.*cos(17 + 7.*t_e);
y_e = 17.*sin(t_e) - 7.*sin(17.*t_e);
plot(x_e, y_e, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_e(end), y_e(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('e)');

% ==========================================
% f) t ∈ [0, 14π]
% ==========================================
subplot(2,5,6);
t_f = 0:0.01:14*pi;
x_f = 2.*cos(t_f);
y_f = 2.*sin(t_f);
plot(x_f, y_f, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_f(end), y_f(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('f)');

% ==========================================
% g) t ∈ [-2π, 2π]
% ==========================================
subplot(2,5,7);
t_g = -2*pi:0.01:2*pi;
x_g = 5.*t_g - 4.*sin(t_g);
y_g = 5 - 4.*cos(t_g);
plot(x_g, y_g, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_g(end), y_g(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('g)');

% ==========================================
% h) t ∈ [0, 2π]
% ==========================================
subplot(2,5,8);
t_h = 0:0.01:2*pi;
x_h = 4.*cos(t_h) + cos(4.*t_h);
y_h = 4.*sin(t_h) - sin(4.*t_h);
plot(x_h, y_h, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_h(end), y_h(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('h)');

% ==========================================
% i) t ∈ [0, 2π]
% ==========================================
subplot(2,5,9);
t_i = 0:0.01:2*pi;
x_i = sin(2.*t_i);
y_i = sin(3.*t_i);
plot(x_i, y_i, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_i(end), y_i(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('i)');

% ==========================================
% j) t ∈ [0, 2π]
% ==========================================
subplot(2,5,10);
t_j = 0:0.01:2*pi;
x_j = sin(4.*t_j);
y_j = sin(5.*t_j);
plot(x_j, y_j, 'Color', colorLinea, 'LineWidth', 1.2); hold on;
plot(x_j(end), y_j(end), 'o', 'MarkerSize', 6, 'MarkerFaceColor', 'w', 'Color', colorMarcador, 'LineWidth', 1.5); 
axis equal; set(gca, 'Color', 'w'); box off; title('j)');