function [sortedX, finalIdx] = bubble_sort(X)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Obtener el número de elementos en X
n = length(X);
% Imprimir el arreglo inicial
fprintf('X desordenado: ');
disp(X);

% Crear un arreglo de índices inicializado con los valores de 1 a n
indices = 1:n;

% Ordenar X de mayor a menor sin usar la función sort
for i = 1:n-1
    for j = i+1:n
        if X(i) < X(j)
            % Intercambiar los valores en X
            temp = X(i);
            X(i) = X(j);
            X(j) = temp;
            
            % Intercambiar los índices correspondientes
            temp = indices(i);
            indices(i) = indices(j);
            indices(j) = temp;
        end
    end
end

sortedX = X;
finalIdx = indices;
end

