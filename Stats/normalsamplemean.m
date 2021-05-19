clear all
clear variables
mean =  input('Input mean1\n');
%remember o is deviation, o.^2 is variance
standard_deviation =  input('Input deviation (not variation)1\n');
numsamp =  input('Input number of samples\n');
sigman = sqrt(standard_deviation.^2/numsamp);
direction=input('greater (g) or less than (l), or twotailed\n');
value=input('value\n');
if direction == 'g'
    answer = normcdf(value,mean,sigman);
    answer = 1 - answer
elseif direction == 'l'
    answer = normcdf(value,mean,sigman)
else
    disp('ERROR')
end