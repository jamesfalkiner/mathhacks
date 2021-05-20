clear all
clear variables
mean =  input('Input mean1\n');
%remember o is deviation, o.^2 is variance
standard_deviation =  input('Input deviation (not variation)1\n');
numsamp =  input('Input number of samples\n');
sigman = sqrt(standard_deviation.^2/numsamp);
tailed=input('are you testing right(better(X>x)("r") or left (worse(X<x)("l") or two tailed ("t")\n');
if tailed == 'r'
    value=input('value\n');
    answer = normcdf(value,mean,sigman);
    answer = 1 - answer
elseif tailed == 'l'
    value=input('value\n');
    answer = normcdf(value,mean,sigman)
elseif tailed == 't'
    min=input('minimum value\n');
    max=input('maximum value\n');
    pmin = normcdf(min,mean,sigman)
    pmax = normcdf(max,mean,sigman)
    probbetween= pmax-pmin
    proboutside=1-probbetween
else
    disp('ERROR')
end