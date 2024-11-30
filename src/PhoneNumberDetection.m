%Q1
clear all;
close all;
clc;
F0 = 600;   %function frequency
F1 = 50;
Fs = 2000; %sample rate
Ts = 1/Fs;
t = 0:Ts:1;
N = length(t);

x = cos(2*pi*F0*t)+ cos(2*pi*F1*t);
X = abs(fftshift(fft(x)));  %fft
freq = -Fs/2:Fs/(N-1):Fs/2;
plot(freq, X);
xlabel('Frequency in Hz');

%%
%Q2
load('f7.mat');
Ts = 1/Fs;
t = Ts:Ts:0.25;
N = length(t);
% sound(d(9,:),Fs);
% pause(1);
    X = [];
for i=1:1:10
    x = [];
    %clear x
    for n = 1:1:2048
        x(1,n) = d(i,n);
        %get 'i'th phone number
    end

%     sound(d(i,:),Fs);
%     pause(0.5);
    X(i,:) = abs(fftshift(fft(x)));
end


freq = -Fs/2:Fs/(N-1):Fs/2;

peaks = [];
pos = [];
curs = 1;
ycurs = 0;
for i=1:1:10
    curs = 1;
    ycurs = ycurs + 1;
    for n = 2:1:(length(freq)-1)
            if (X(i,n) > 462)
            peaks(ycurs,curs) = X(i,n);
            pos(ycurs,curs) = freq(n);
            curs = curs + 1;
        end
    end
end

numbers = [];
%top row
for i=1:1:10
    if round(pos(i,4)) == 1211
        if round(pos(i,3)) == 698
            num(i) = '1';
        elseif round(pos(i,3)) == 770
            num(i) = '4';
        elseif round(pos(i,3)) == 854
            num(i) = '7';
        end
    elseif round(pos(i,4)) == 1339
        if round(pos(i,3)) == 698
            num(i) = '2';
        elseif round(pos(i,3)) == 770
            num(i) = '5';
        elseif round(pos(i,3)) == 854
            num(i) = '8';
        end
    elseif round(pos(i,4)) == 1479
        if round(pos(i,3)) == 698
            num(i) = '3';
        elseif round(pos(i,3)) == 770
            num(i) = '6';
        elseif round(pos(i,3)) == 854
            num(i) = '9';
        end
    end
end

figure(2)
axis off;
gtext(num,'fontsize',90);