% basic probability

chance = input('insert chance of event (0-1 range)');
num_events = input('insert number of trials (0-1 range)');
n = num_events;
goal = input('insert number of positive trials');
g = goal;

X = nchoosek(n,g)*(chance.^g)*(1-chance).^(n-g)

%e.g.If 20% of bolts chosen at random from a production line are found to be defective, determine the
% probabilities that out of four bolts chosen
% 
% 0 defective = 0.4096
% 1 defective = 0.4096
% at most 2 defective = 0.4096 + 0.4096