tol =1e-8;
x1=0;
x2=0.5;
kmax=ceil(log(abs(x2-x1)/tol)/log(2));

fun=@(r) 9.496e3*(1-12*r.^2+16*r^3)-1800;

f1=feval(fun,x1);
f2=feval(fun,x2);
if f1==0
    x=x1;
    return;
end

if f2==0
    x=x2;
    return;
end

if f1*f2>0
    error('The root is not located');
end

for k=1:kmax
    x3=(x1+x2)/2;
    f3=feval(fun,x3);
    if abs(f3)<=tol
        x=x3;
        break;
    end
    if f2*f3<0
        x1=x3;
        f1=f3;
    else
        x2=x3;
        f2=f3;
    end
    x=(x1+x2)/2;
    k;
end
