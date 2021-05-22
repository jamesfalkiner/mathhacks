clear all
clear variables
syms x
meannull =  input('Input null mean1\n');
%remember o is deviation, o.^2 is variance
standard_deviationnull= input('Input null deviation\n');
meanalt =  input('Input alt mean1\n');
%remember o is deviation, o.^2 is variance
standard_deviationalt= input('Input alt deviation\n');
trials= input('Input number of trials\n')
eqn=(x-meannull)/(standard_deviationnull/sqrt(trials))-((meanalt-x)/((standard_deviationnull/sqrt(trials))));
answer= solve(eqn,x)
alpha= vpa((answer-meannull)/(standard_deviationnull/sqrt(trials)))
disp('now somehow find signficance')
