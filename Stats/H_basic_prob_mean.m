% basic probability - chance of random event given a mean
% 
mean = input('insert mean');
mean_timeframe = input('insert timeframe for mean');
k = input('insert actual figure');
k_timeframe = input('insert timeframe for actual figure');
mean = mean*(k_timeframe/mean_timeframe);


X = (mean.^k)*exp(-mean)/factorial(k)

% The mean number of breakdowns due to failure of a bearing in a large automatic printing machine
% is two per six months (note p is small). Assuming the failures are random, calculate the probability
% distribution of the number of breakdowns per six months per machine (note n is not given).