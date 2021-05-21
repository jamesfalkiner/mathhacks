%answer = a0divide2 + infini*an*cos(2*pi*n*t/period)+infini*bn*sin(2*pi*n*t/period)
a0 =  input('input a0\n')
an =  input('input an (BE CAREFUL)\n')
bn =  input('input bn (BE CAREFUL)\n')
start_loop = input('input min\n') ;
end_loop = input('input max\n') ;
range = start_loop:1:end_loop;
toplot=[];
while start_loop<=end_loop
    if start_loop ==0
        value = a0/2;
    else
        value=sqrt(an.^2+bn.^2)/2;
        value=subs(value,n,start_loop);
    end
    toplot = [toplot,value];
    start_loop= start_loop +1;
end

stem(range,toplot)
