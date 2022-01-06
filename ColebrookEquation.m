myfun=@(f)(1/sqrt(f))+0.86*log((0.00013/3.7)+(2.51/(6.5e4*sqrt(f))));
fsolve(myfun,0.1)