%If things are independant - sample means test which will calculate
%difference in standard deviation
%If things are dependant (like parents IQ)- paired t test
clear all
clear variables
DIFmean = input('input difference in mean\n');
s = input('input s (standard deviation, not variance)\n');
N = input('number of trials\n');
T=(DIFmean)/(s/(sqrt(N)))
disp('Now compare to the N-1 degrees of freedom table remember if two tailed halve the significance value')
%https://www.stat.purdue.edu/~lfindsen/stat503/t-Dist.pdf