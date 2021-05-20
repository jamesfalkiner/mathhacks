%If the population standard deviation is unknown then we must use the critical value from the
%t-distribution with N-1 degrees of freedom along with the sample standard deviation

clear all
clear variables
Amean = input('input sample mean 1\n');
samplesd = input('input sample standard deviation\n')
Bmean=input('input population mean 2\n');
crit=input('critical value from t distribution with N-1 degrees of freedom\n');
N = input('numb0e of trials\n')
minimum= Amean-((crit*samplesd)/sqrt(N))
maximum= Amean+((crit*samplesd)/sqrt(N))
disp('Now compare to the N-1 degrees of freedom table\n if tscore is larger than critical value, reject null hypthosis')
%https://www.stat.purdue.edu/~lfindsen/stat503/t-Dist.pdf