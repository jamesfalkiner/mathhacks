% basic probability

% NOT WORKING

chance = input('insert chance of event (0-1 range)');
num_events = input('insert chance requested (0-1 range)');
n = num_events;
goal = input('insert number of positive trials');
g = goal;

X = nchoosek(n,g)*(chance.^g)*(1-chance).^(n-g)

% A fair coin is tossed with a probability of 1/2 of showing a head. Assuming that tosses are independent,
% how many times does the coin need to be tossed so that the probability of getting at least one head is at
% least 99?

% X = number of heads thrown. X ∼ Binomial(n,0.5) thus we need to determine the value of n such that
% P(X > 0) = 1−P(X = 0) ≥ 0.99.
% Taking logarithms gives n ≥ log(0.01)/log(0.5) = 6.64 hence 7 tosses are required to get a head with 99%
% probability.
