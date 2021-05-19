%INPUTDATAHERE
data = [95.6, 98.2, 100.5, 92.4, 97.4, 110.2, 87.2, 99.1];
significance=0.1;
expectedmean=100
[h,p,ci,stats]=ttest(data,expectedmean,'Alpha', significance)


