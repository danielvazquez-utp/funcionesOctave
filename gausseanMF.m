% Funciones de pertenencia
% Asignatura: Tópicos selectos de computación
% Autor: Paulo Daniel Vázquez Mora
% Fecha: 4-junio-2022

% Aqui va el conjunto de datos que pueden ser leidos desde un archivo CSV o generados aleatoriamente
%P = csvread("weights.csv");
P = round(rand(1000, 1)*100);

% Generación de una matriz de resultados donde se evaluan las funciones de pertenencia
res = [];
for i = P
  res = [res [P trapMF(P, 0, 15, 35, 50) trapMF(P, 25, 35, 65, 75) trapMF(P, 50, 60, 85, 100)]];
endfor

% Ordenamiento de los resultados para graficación, en base al conjunto de valores provisto
res;
[~, s] = sort(res(:, 1));
res(s, :);
resultados = [res(s, :)]
x=resultados(:,1);
y=resultados(:,2);
z=resultados(:,3);
w=resultados(:,4);

% Generación de gráfica
plot(x, y, x, z, x, w);
xlabel ("Pesos");
ylabel ("Grado de pertenencia");
title ("Función de pertenencia trapezoidal");
