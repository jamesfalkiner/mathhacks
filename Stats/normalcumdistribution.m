clear all
clear variables
mean =  input('Input mean\n');
%remember o is deviation, o.^2 is variance
standard_deviation =  input('Input deviation (not variation)\n');
test_range = input('input start and finish values like so: [start end] e.h. [0 7]\n');
answer= normalcdf(test_range,mean, sigma)
