%If things are independant - sample means test
%If things are dependant (like parents IQ)- paired t test
%Alternative version that calculates the difference in SD but not
%accurately
clear all
clear variables
Amean = input('input smallest mean 1\n');
Asd = input('input sd 1\n')
Bmean=input('input largest mean 2\n');
Bsd = input('input sd 2\n')
N = input('numb0e of trials\n')
T=(Amean-Bmean)/(sqrt(Bsd.^2/N+Asd.^2/N))
disp('Now compare to the N-1 degrees of freedom table\n if tscore is larger than critical value, reject null hypthosis')
%https://www.stat.purdue.edu/~lfindsen/stat503/t-Dist.pdf