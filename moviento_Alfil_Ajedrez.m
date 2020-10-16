%Matriz a evaluar
M = zeros(8);
M = string(M);
	
	% Buble que me permite llenar los B y N
	for i=1:size(M,1)%uno representa las filas
		for j=1:size(M,2)%dos representa las columnas
			% si el resultado es 0 ingreso B y N en ese orden
			if (rem(i,2) == 0) % al sacar el residuo de la division ente i%2 me da 0, entro al if
				% me permite intercalar los B y N
				if (rem(j,2) == 0) % al sacar el residuo de la division ente j%2 me da 0, entro al if
					M(i,j) = "B";
				else
					M(i,j) = "N";
				end
			else % caso contrario ingreso N y B en ese orden
				% me permite intercalar los N y B
				if (rem(j,2) == 0) % al sacar el residuo de la division ente j%2 me da 0, entro al if
					M(i,j) = "N";
				else
					M(i,j) = "B";
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
        