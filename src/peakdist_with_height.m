function val = peakdist( Fs, func ,time)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Ts = 1/Fs;


max = 0;
for n = 1:1:length(time)
    if (max < func(n))
        max = func(n);
    end
end
% for n = 1:1:4801
%     if (round(max,4) == round(s(n),4))
%         plot(Ts*n,s(n),'*r');
%     end
% end
prevloc = 0;
loc = 0;
tripwire = 0;
n=1;
for n = 1:1:length(time)
    if (round(max,4) == round(func(n),4)) && tripwire == 0
        prevloc = Ts*n;
        tripwire = 1;
    elseif (round(max,4) == round(func(n),4)) && tripwire == 1
            loc = Ts*n;
            tripwire = 2;
    end
end
loc = loc - prevloc;

val(1) = loc;
val(2) = max;
end

