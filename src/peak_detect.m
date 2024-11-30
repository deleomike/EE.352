%Q1
%%
Fs = 1200;
Ts = 1/Fs;
t = 0:Ts:4;
s = 5.*sin((9.6*pi).*t)+3.*sin((12*pi).*t);
figure(1)
plot(t,s)
hold on;
%Q2
%%
for n = 2:1:4800
    if (s(n) > s(n-1)) && (s(n) > s(n+1))
        plot(Ts*n,s(n),'*r');
        hold on;
    end
end
title('figure 1');
%dbstop if erorr stops cursor at line of error
%%
%Q3
figure(2)
plot(t,s);
hold on;
max = 0;
loc = 0;
for n = 1:1:4801
    if (max < s(n))
        max = s(n);
        loc = n*Ts;
    end
end
for n = 1:1:4801
    if (round(max,4) == round(s(n),4))
        plot(Ts*n,s(n),'*r');
    end
end
%%
%Q4
prevloc = 0;
loc = 0;
tripwire = 0;
for n = 1:1:4801
    if (round(max,4) == round(s(n),4)) && tripwire == 0
        prevloc = Ts*n;
        tripwire = 1;
    elseif (round(max,4) == round(s(n),4)) && tripwire == 1
            loc = Ts*n;
            tripwire = 2;
    end
end
loc = loc - prevloc;
%%
%Q5
loc = (1/loc) * 60;
figure(3)
plot(t,s);
str = sprintf('BPM: %f Beats Per Minute', loc);
gtext(str);
%%
%Q6
load('ecg_data.mat','Fs');
Ts = 1/Fs;
t = 0:Ts:4;
load('ecg_data.mat','-mat','ecg');
s= ecg';
figure(4);
plot(t,s);
%get max
max = 0;
y = size(s)
for n = 1:1:y(2)
    if (max < s(n))
        max = s(n);
        loc = n*Ts;
    end
end
%find duration
tripwire = 0;
for n = 1:1:y(2)
    if (round(max,4) >= round(s(n),4)-100) && (round(max,4) <= round(s(n),4)+100) && tripwire == 0
        prevloc = Ts*n;
        tripwire = 1;
    elseif (round(max,4) >= round(s(n),4)-100) && (round(max,4) <= round(s(n),4)+100) && tripwire == 1
            loc = Ts*n;
            tripwire = 2;
    end
end

loc = 60/(loc - prevloc);
str = sprintf('BPM: %f Beats Per Minute', loc);
gtext(str);
