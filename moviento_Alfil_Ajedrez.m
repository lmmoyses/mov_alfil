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
	
	M % Muestro la matriz 
	
	%ingreso de variab;es
	fila = input('Fila: '); % Ingreso la fila
	columna = input('Columna: '); % Ingreso la Columna

   
    %validacion que las columnas y  filas no sea mayores a 8
    if (fila > 8 || columna > 8 || fila <=0 || columna <= 0)
        error('No se puede ingresar valores mayores a 8 ni menores o igual a cero!');
    end
    
	M(fila,columna) = "*"; % en las posiciones dadas ingreso el * en el centro
	
	% Cuadrante 1 
	auxf = fila; % el auxiliar de la fila
	auxc = columna; % el auxiliar de la columna	
	% bucle que ingresa los * en el cuadrante 1
	for i=1:size(M,1)
		auxf = auxf - 1; % decremento en 1
		auxc = auxc + 1; % incremento en 1
		
		% ingreso al if cuando los índices de la matriz no se han sobrepasado o sean negativos
		if (auxf >= 1) && (auxc <= size(M,1))
			M(auxf,auxc) = "*"; % agrego el * en la posicion obtenida
		else % caso contrario termino el for
			break;
		end
	end
	
	% Cuadrante 2
	% inicializo de nuevo las variables con los valores de la fila y la columna
	auxf = fila;
	auxc = columna;	
	% bucle que ingresa los * en el cuadrante 2
	for i=1:size(M,1)
		auxf = auxf + 1; % incremento en 1
		auxc = auxc + 1; % incremento en 1
		% ingreso al if cuando los indices tiene el mismo tamaño de la matriz
		if (auxf <= size(M,1)) && (auxc <= size(M,1))
			M(auxf,auxc) = "*"; % agrego el * en la posicion obtenida
		else % caso contrario termino el for
			break;
		end
	end
	
	% Cuadrante 3
	% inicializo de nuevo las variables con los valores de la fila y la columna
	auxf = fila;
	auxc = columna;
	
	% bucle que ingresa los * en el cuadrante 3
	for i=1:size(M,1)
		auxf = auxf - 1; % decremento en 1
		auxc = auxc - 1; % decremento en 1
		% ingreso al if cuando los indices son mayores que 0
		if (auxf >= 1) && (auxc >= 1)
			M(auxf,auxc) = "*"; % agrego el * en la posicion obtenida
		else % caso contrario termino el for
			break;
		end
	end
	
	% cuadrante 4
	% inicializo de nuevo las variables con los valores de la fila y la columna1
	auxf = fila;
	auxc = columna;
	
	% bucle que ingresa los * en el cuadrante 4
	for i=1:size(M,1)
		auxf = auxf + 1; % incremento en 1
		auxc = auxc - 1; % decremento en 1
		% ingreso al if cuando los índices de la matriz no se han sobrepasado o sean negativos
		if (auxf <= size(M,1)) && (auxc >= 1)
			M(auxf,auxc) = "*"; % agrego el * en la posicion obtenida
		else % caso contrario termino el for
			break;
		end
	end
	
	M % Muestro la matriz 
        