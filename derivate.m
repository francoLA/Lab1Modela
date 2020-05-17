function [outputArg] = derivate(polinomio)
%DERIVATE Summary of this function goes here
%   Detailed explanation goes here
largo = length(polinomio);
i = largo;
while i>1
    polinomio(i)= polinomio(i-1)*(largo - i + 1);
    i=i-1;
end
polinomio(1)=0;
outputArg = polinomio;
end

