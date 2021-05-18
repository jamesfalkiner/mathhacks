clear all
clear variables
mean1 =  input('Input mean1\n');
%remember o is deviation, o.^2 is variance
standard_deviation1 =  input('Input deviation (not variation)1\n');
mean2 =  input('Input mean2\n');
%remember o is deviation, o.^2 is variance
standard_deviation2 =  input('Input deviation (not variation)2\n');
mean=mean1+mean2;
standard_deviation= sqrt(standard_deviation1.^2+standard_deviation2.^2)
test_range = input('input start and finish values like so: [start end] e.h. [0 7]\n');
answer= normcdf(test_range(2),mean, standard_deviation)-normcdf(test_range(1),mean, standard_deviation)