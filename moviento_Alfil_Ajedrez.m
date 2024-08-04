% TABLERO DE AJEDREZ - MOVIENTO DEL ALFIL 2.0
%Recreacion de los posibilidades de los movimientos del alfil
% en un tablero de ajedrez, 

%Matriz que representa mi tablero
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

m %impresion de matriz



%posibles movientos de la alfil
en = ['Coloque el ALFIL en una posicion dentro del tablero'];
disp(en) %impresion

fila = input('Ingrese Fila: \n'); % Ingreso la fila
columna = input('Ingrese Columna: \n'); % Ingreso la columna

%validacion que las columnas y  filas no sea mayores a 8
if (fila > 8 || columna > 8)
    error('El tablero de Ajedrez tiene 8 filas y 8 columnas');
%validacion: columanas y filas no deben ser menores ni iguales a 0
elseif ( fila <=0 || columna <= 0 )
    error('Ingrese filas y columnas mayores que 0');
end

if (fila ~= 0 && columna ~= 0) % validacion de negativos
    %cuadrantes inferiores-------------------
    aux_c_d = columna; %variables tenporales
    aux_c_i = columna; %variables temporales
        
    for i=fila:size(m,2)%recorrido en profundidad
        %diagonal inferiori izquierda
        if aux_c_i >= 1 %columnas debe ser mayor a 0
            m(i,aux_c_i) = '0'; %ingreso en la matriz *
            aux_c_i = aux_c_i - 1; %decremneto  de columna
        end
            
        %diagonal inferior derecha
        if aux_c_d <= size(m,2) %columna debe ser menor a 8 (limite del tablero)
            m(i,aux_c_d) = '0';%ingreso en la matriz *
            aux_c_d = aux_c_d + 1; %incremento  de columna
        end
     end
     %-----------------------------------------
        
     %cuadrantes superiores-------------------
     aux_c_sd = columna;%variables temporales
     aux_c_si = columna;%variables temporales
        
     for i=fila:-1:1 %recorrido desde la fila ingresada hacia arriba
         %diagonal superior derecha
         if aux_c_sd <= size(m,2)%columna debe ser menor a 8 (limite del tablero)
             m(i,aux_c_sd) = '0';%ingreso en la matriz *
             aux_c_sd = aux_c_sd + 1; %incremento
         end
            
         %diagonal superior izquierda
         if aux_c_si > 0 %columnas debe ser mayor a 0
             m(i,aux_c_si) = '0'; %ingreso en la matriz *
             aux_c_si = aux_c_si - 1; % decremento de columna
         end
     end
     %-----------------------------------------
end

m %impresion de la matriz resultado
