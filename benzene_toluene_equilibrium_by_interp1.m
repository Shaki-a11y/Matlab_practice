x=[0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0];
y=[0.0 0.21 0.38 0.51 0.62 0.71 0.79 0.86 0.91 0.96 1.00];
length(x)
length(y)

near=interp1(x,y,0.45,'nearest')
linear=interp1(x,y,0.45,'linear')
sp=interp1(x,y,0.45,'spline')
nv=interp1(x,y,0.45,'pchip')





