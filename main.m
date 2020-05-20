%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PARTE 1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%intervalos
valores = [0:0.01:15*pi];
valores2 = [-10:0.05:10];

%calculos 
result = a(valores);
result2 = b(valores);
result3 = c(valores2);

%%%%%%%%%%%%%%%%%%%%%%%graficos%%%%%%%%%%%%%%%%%%%%%
figure
plot(valores, result, 'r *');
title('Grafico funcion a');
ylabel('Resultados');
xlabel('Valores');

figure
plot(valores, result2, 'g +');
title('Grafico funcion b');
ylabel('Resultados');
xlabel('Valores');

figure
plot(valores, result, 'r *');
title('Grafico función a y b');
ylabel('Resultados');
xlabel('Valores');
hold on
plot(valores, result2, 'g +');
hold off

figure
plot(valores2, result3);
title('Grafico funcion c escala normal');
ylabel('Resultados');
xlabel('Valores');
grid on

figure
semilogy(valores2, result3);
title('Grafico funcion c escala logarítmica');
ylabel('Resultados');
xlabel('Valores');
grid on


%%%%%%%%%%%%%%%%%%%PARTE 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%valores de entrada
f = input('Ingrese la funcion: ');
max = input('Ingrese el numero maximo de itearaciones: ');
error = input('Ingrese el error a considerar: ');
x0 = input('Ingrese el valor inicial: ');

solucion = newton(f, max, error, x0);
solucion;


len = 0;
matriz = [];
while len < 4
    matriz = input('Ingrese un vector de minimo 4 valores: ');
    len = size(matriz);
    if len < 4
        disp('Debe ingresar un vector de minimo 4 valores!');
    end
end
resultado = operar(matriz);
resultado;

