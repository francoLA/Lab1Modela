function [resultado] = b(x)
    
    var = x + 9;
    var2 = 4 * x + 32;
    log1 = log(var)/log(2);
    log2 = log(var2)/log(6);
    seno = sin(6 * log1);
    coseno = cos(7 * log2);
    
    resultado = seno + coseno;
end