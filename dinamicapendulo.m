clc;clear;close all;
m = 1; g = 9.81; l = 1;
T = 0.01;
t = 0:T:10;
x1 = zeros(size(t));
x2 = zeros(size(t));
x1(1) = 45;
x2(1) = 0;
for k=1:length(t)-1
    x1(k+1)= x2(k)*T+x1(k);
    x2(k+1)= -g/l*sind(x1(k))*T+x2(k);
    plot([0 l*sind(x1(k))],[0 -l*cosd(x1(k))],'-o');
    axis([-2 2 -2 2])
    pause(0.001)
end