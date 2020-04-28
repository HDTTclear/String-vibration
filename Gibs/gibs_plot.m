function [x] = gibs_plot(n)
t=-20*pi/100:0.001*pi/1024:20*pi/100;
f=1;
y=square(2*pi*f*t,50);

%x=4/pi*(sin(2*pi*f*t)+1/3*sin(2*pi*3*f*t)+1/5*sin(5*2*pi*f*t));
%plot(t,y);
%hold on;
%plot(t,x);
%grid
x=0;
for k = 0:n
    x=x+4/pi*1/(2*k+1)*sin((2*k+1)*2*pi*f*t);
end
%set(gcf,'Position',get(gcf,'Position').*[1 1 1.3 1])
plot(t,y);
hold on;
plot(t,x);
grid on;
hold off;
title(['½×Êý=',num2str(n)]);
ylim([-1.3 1.3]);