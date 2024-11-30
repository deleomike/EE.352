%Bhajan352.m
Line1=[40 42 44 45 47 49 51 52 52 51 49 47 45 44 42 40];
dur = 0.5;
Fs=8192;
x=[]; %X is blank row'
for k=1:length(Line1)
    x=[x get_note(Line1(k),dur)];
end

Line2=[40 42 44 45 40 42 44 45 47 49 51 52 47 49 51 52];
for k=1:length(Line2)
    x=[x get_note(Line2(k),dur)];
end
Line3=Line1;
for k=1:length(Line3)
    x=[x get_note(Line3(k),dur)];
end
sound(x,Fs);

%melakartha(40);