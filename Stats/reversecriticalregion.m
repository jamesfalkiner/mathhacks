clear all
clear variables
syms x
mean1 =  input('Input mean1\n');
standard_deviation1 =  input('Input deviation (not variation)1\n');
significance = input('input significance, (10,5,2.5,2,1,0.5)');
tailed=input('are you testing right(better(X>x)("r") or left (worse(X<x)("l") or two tailed ("t")\n');
value = input('input value');
if tailed =='r'
    if significance == 5
        alpha=1.645;
    elseif significance==2.5
        alpha=1.96;
    elseif significance==1
        alpha=2.326 ; 
    elseif significance==0.5
       alpha=2.576;
    else
        disp('ERROR you idiot')
    end  
elseif tailed == 'l'
    if significance == 5
        alpha=1.645;
    elseif significance==2.5
        alpha=1.96;
    elseif significance==1
        alpha=2.326  ;
    elseif significance==0.5
       alpha=2.576;
    else
        disp('ERROR you idiot')
    end
elseif tailed =='t'
        if significance == 10
        alpha=1.645;
    elseif significance==5
        alpha=1.96;
    elseif significance==2
        alpha=2.326;  
    elseif significance==1
       alpha=2.576;
    else
        disp('ERROR you idiot')
        end
end
a = [mean1-alpha*(sqrt(standard_deviation1.^2/x)),mean1+alpha*(sqrt(standard_deviation1.^2/x))]
new1 = a(1)-value
answer1=vpa(solve(new1,x))
new2 = a(2)-value
answer1=vpa(solve(new2,x))
 