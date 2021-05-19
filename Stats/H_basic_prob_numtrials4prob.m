% basic probability - how many events for a requested success rate

chance = input('insert chance of event (0-1 range)');
goal_percentage = input('insert requested percentage chance of event');
p = goal_percentage

X = nchoosek(n,g)(1-chance).^(n-g)

%e.g.If 20% of bolts chosen at random from a production line are found to be defective, determine the
% probabilities that out of four bolts chosen
% 
% 0 defective = 0.4096
% 1 defective = 0.4096
% at most 2 defective = 0.4096 + 0.4096