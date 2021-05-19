clear all
clear variables
%WRITE DOWN NULL AND ALTERNATE HYPOTHESIS FIRST
prob=input('input probability\n');
no_trials=input('input the number of trials\n');
values=input('input the values to evaluate at as a vector or digit\n');
sig_level=input('input the significance level e.g. 0.05\n');
pd=makedist('Binomial','N',no_trials,'p',prob);
better=input('are you testing greater(better(X>x)("g") or smaller (worse(X<x)("s") or two tailed ("t")\n');
if better =='g'
    answer=1-cdf(pd,values-1)
elseif better == 's'
    answer=cdf(pd,values)
elseif better =='t'
    poo=1
end

if answer>sig_level
    disp('success')
else
    disp('fail')
    
end