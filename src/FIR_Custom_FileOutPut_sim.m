%runs the file output from FIR_FileOutput.cpp
clear all;
clc;
s = csvread('dat.csv');
%adjust the implied decimal to normal scale
siz = 1024;
n = 1/1024;
t = 1:1:siz;
figure(5);
plot(t,s);
hold on;
title('Output');
hold on;

d = csvread('wave.csv');
figure(6);
plot(t,d);
hold on;
title('Input');
hold on;

y = csvread('coeff.csv');
figure(7);
plot(t,y);
hold on;
title('Coefficients');
hold on;

result = conv(d,y);
ts = 1:1:127;
figure(8);
plot(ts,result);
hold on;
title('Expected Result');
hold on;