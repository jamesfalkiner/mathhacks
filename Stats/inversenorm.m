clear all
clear variables
mean =  input('Input mean1\n');
std =  input('standard deviation\n');
prob=input('input probability');
answer=norminv(prob,mean, std)
%remember o is deviation, o.^2 is variance