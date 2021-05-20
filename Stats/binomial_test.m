clear all
clear variables
%WRITE DOWN NULL AND ALTERNATE HYPOTHESIS FIRST
prob=input('input probability\n');
no_trials=input('input the number of trials\n');
sig_level=input('input the significance level e.g. 0.05\n');
pd=makedist('Binomial','N',no_trials,'p',prob);
disp('careful of < versus <=')
better=input('are you testing greater(better(X>=x)("g") or smaller (worse(X<=x)("s") or two tailed ("t")\n');
if better =='g'
    values=input('input the values to evaluate at as a vector or digit\n');
    answer=1-cdf(pd,values-1)
elseif better == 's'
    disp('may have to subtract 1')
    values=input('input the values to evaluate at as a vector or digit\n');
    answer=cdf(pd,values)
elseif better =='t'
    min=input('minimum value\n');
    max=input('maximum value\n');
    pmin = cdf(pd,min)
    pmax = cdf(pd,max)
    probbetween= pmax-pmin
    proboutside=1-probbetween
    sig_level=sig_level/2;
end

if answer>sig_level
    disp('success')
else
    disp('fail')
    
end