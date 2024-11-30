% We iterate from -5 to 5 using only integers
for n = -5 : 5
    y =  ramp(n)+n*unitstep(-n)
    stem(n, y)
    hold on
end
% We adjust our axis values just to visualize better
axis([-5 5 -5 5])