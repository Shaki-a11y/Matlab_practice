
%% 3D plot by plot3

t= 0:0.1:8*pi;
x=0.8*sin(t);
y=1.2*cos(t);
plot3(x,y,t);
grid


%% histogram
x=0:0.1:6;
plot(x,exp(-x.^1.2),x,cos(2*x));

hist(randn(1000,1));

