%pop standard deviation NOT SAMPLE

data=input('insert data with a space between each point in form []');
frequency =input('insert frequency of data with a space between each point in form []');
mean = 0;
var=0;
pop_std_dev=0;

num_trials=input('insert number of trials');
for n = 1:length(data)
x= data(n)*frequency(n)
    mean = mean + data(n)*frequency(n);
end

mean=mean/num_trials

for n = 1:length(data)
    var= var+(data(n)-mean).^2/(num_trials);
end
pop_std_dev = sqrt(var)