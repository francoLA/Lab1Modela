function[solucion] = newton(funcion, max, error, x0)
    
    f = funcion;
    f1 = diff(f); %derivada de la funcion
    solucion = raphson(f, f1, max, error, x0, 1); %llamado a funcion recursiva
end

function[resultado] = raphson(f, f1, max, error, x0, iteracion)
    
    if iteracion < max %condicion de corte de maxima iteracion
        solucion = x0 - polyval(f, x0)/polyval(f1, x0); %calculo del valor
        err = (solucion - x0) / solucion; %calculo del error
        
        if err > error  %condicion de corte de error
            resultado = raphson(f, f1, max, error, solucion, (iteracion + 1)); %llamado recursivo
        else
            resultado = solucion;
        end
    else
        resultado = x0;
    end
end