%runs the file output from FIR_FileOutput.cpp
clear all;
clc;
s = csvread('datFFT.csv');
%adjust the implied decimal to normal scale
siz = 64;
n = 1/64;
t = 1:1:siz;
figure(5);
plot(t,s);
hold on;
title('Output');