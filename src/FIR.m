clc;
close all;
clear all;

fid = fopen('Y.dat','r'); %open file
F = fread(fid,'float');   %read file
fclose(fid);              %close file 

N = length(F);            %get signal length (number of samples)
Fs = 500;                 %set sample frequency
dt = 1/Fs;                %get sample period in time domain
df = Fs/N;                %get sample period in frequency domain
t = (1:N)*dt;             %get time vector 
f = (1:N)*df;             %get frequency vector 

plot(t,F);                %plot signal in time 

figure;
S = abs(fft(F));          %get frequency response of filter 
plot(f(1:N/2),20*log10(S(1:N/2)/max(S(1:N/2))));  %plot frequency response
xlabel('Hz');
ylabel('S, dB');