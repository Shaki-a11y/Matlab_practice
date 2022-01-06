%% polynomial regression by polyfit 
syms T;

%given data

t=[283.15 303.15 323.15 363.15 393.15 413.15];
h=[2519.9 2556.4 2592.2 2660.1 2706.0 2733.1];


y=polyfit(t,h,2);

x=280:0.1:415;

z=polyval(y,x);
plot(x,z);
hold on;
plot(t,h,'o');

disp(polyval(y,350.15));
