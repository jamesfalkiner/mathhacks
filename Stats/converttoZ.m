clear all
clear variables
mean =  input('Input mean1\n');
%remember o is deviation, o.^2 is variance
standard_deviation =  input('Input deviation (not variation)1\n');
raw_score=input('Input rawscore or point you want to go up to\n');
z=(raw_score-mean)/standard_deviation