%If things are independant - sample means test
%If things are dependant (like parents IQ)- paired t test
clear all
clear variables
Amean = input('input mean 1\n');
Asd = input('input sd 1\n')
Bmean=input('input mean 2\n');
Bsd = input('input sd 2\n')
N = input('numb0e of trials')
v = 2*N-2;
tval = (Amean-Bmean) / sqrt((Asd^2+Bsd^2)/N);       % Calculate T-Statistic
tdist2T = @(t,v) (1-betainc(v/(v+t^2),v/2,0.5));    % 2-tailed t-distribution
tdist1T = @(t,v) 1-(1-tdist2T(t,v))/2;              % 1-tailed t-distribution
tprob = 1-[tdist2T(tval,v)  tdist1T(tval,v)]