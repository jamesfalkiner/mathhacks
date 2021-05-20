%If things are independant - sample means test
%If things are dependant (like parents IQ)- paired t test
clear all
clear variables
DIFmean = input('input difference in mean\n');
DIFsd = input('input difference in standard deviation\n');
N = input('numb0e of trials\n');
T=(DIFmean)/(DIFsd/(sqrt(N)))
disp('Now compare to the N-1 degrees of freedom table')
%https://www.stat.purdue.edu/~lfindsen/stat503/t-Dist.pdf