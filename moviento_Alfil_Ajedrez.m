% TABLERO DE AJEDREZ - MOVIENTO DEL ALFIL
%Recreacion de los posibilidades de los movimientos del alfil
% en un tablero de ajedrez

%Matriz 
m = zeros(8); %creacion de un matriz vacia
m = string(M); %conversion de la matriz a string 
	
	% Buble que me permite llenar los B y N
for i=1:size(m,1) %recorrido de filas
    for j=1:size(m,2) %recorrido de columnas
        
        if (mod(i,2) == 0)%fila par
            if (mod(j,2)) == 0 %columnas par
                m(i,j) = 'B'; %agrego B a la matriz
            else %columna impar
                m(i,j) = 'N'; %agrego N a la matriz
            end
        else %fila impar
            if (mod(j,2)) == 0 %columnas par
                m(i,j) = 'N'; %agrego N a la matriz
            else%columna impar
                m(i,j) = 'B'; %agrego B a la matriz
            end
        end

    end
end
