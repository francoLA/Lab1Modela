function[resultado] = operar(matriz)
 
    mayores = maxk(matriz, 4);
    menores = mink(matriz, 4);
    
    aux = sqrt(sum(mayores));
    aux2 = sum(sqrt(menores));
    
    resultado = aux - aux2;
end