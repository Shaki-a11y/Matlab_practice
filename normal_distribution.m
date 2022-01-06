%% given 

mu=0;
sigma=1;
ux=0.8;
z1=2;
lx=-0.8;


fx=@(x) normpdf(x,mu,sigma);
p= integral(fx,lx,ux);
pf=normcdf(ux,mu,sigma)-normcdf(lx,mu,sigma);
disp(p);
disp(pf);
pz=1-normcdf(2,mu,sigma);
disp(pz)