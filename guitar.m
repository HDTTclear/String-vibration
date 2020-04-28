function [u,fs] = guitar(keynum,t)
L=0.5;
f = 440 * (2^( (keynum-49)/12 ));
c=2*L*f;
fs = 11025; 
%t = 0:1/fs:2;
u=0;
for k = 0:50
    
%k=1;
%音色计算，基于数学物理方程
    u = u+((-1)^k).*(8/((2*k+1)^2*pi^2)).*sin(((2*k+1)*pi/L)*L/2).*cos(((2*k+1)*pi*c/L)*t);
    %u = u+((-1)^k).*(8/((2*k+1)^2*pi^2)).*sin(((2*k+1)*pi/L)*L/2).*cos(((2*k+1)*2*pi*f)*t);
    
end
%u=u.*exp(-2*t);
