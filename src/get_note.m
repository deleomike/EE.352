%%%%saved in same directory as Bhajan352
%get_note.m
function x = get_note(k,d)
Fs = 8192;  t=0:1/Fs:d;     f=440*2^((k-49)/12);    x=sin(2*pi*f*t);
return