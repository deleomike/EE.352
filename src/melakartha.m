%melakartha.m
function s = melakartha(n)

%here you need to fill the code

%for example suppose you want to sing kanakagi. input n is 1
%and you type melakartha(1) in the command window
%and the following should be executed
%values of tones
S=40; R1=41; R2 = 42; R3 = 43;G1=42; G2= 43; G3=44; M1=45; M2 = 46; P=47; D1=48; D2=49; D3 = 50; N1=49; N2=40; N3=51; S2 = 52;
M = [S R1 G1 M1 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G1 M1 P D1 N2 S2 S2 N2 D1 P M1 G1 R1 S;
    S R1 G1 M1 P D1 N3 S2 S2 N3 D1 P M1 G1 R1 S;
    S R1 G1 M1 P D2 N2 S2 S2 N2 D2 P M1 G1 R1 S;
    S R1 G1 M1 P D2 N3 S2 S2 N3 D2 P M1 G1 R1 S;
    S R1 G1 M1 P D3 N3 S2 S2 N3 D3 P M1 G1 R1 S;
    S R1 G2 M1 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M1 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M1 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M1 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;  
    S R1 G2 M1 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M1 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M1 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M1 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M1 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;  
    S R1 G3 M1 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M1 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M1 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M1 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M1 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;%20
    S R2 G2 M1 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M1 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M1 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M1 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M1 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M1 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M1 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M1 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M1 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M1 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M1 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M1 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M1 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M1 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M1 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;%35
    S R3 G3 M1 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G1 M2 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G1 M2 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G1 M2 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G1 M2 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G1 M2 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G1 M2 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M2 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M2 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M2 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M2 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M2 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G2 M2 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M2 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M2 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M2 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M2 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M2 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R1 G3 M2 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M2 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M2 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M2 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M2 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M2 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G2 M2 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M2 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M2 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M2 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M2 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M2 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R2 G3 M2 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M2 P D1 N1 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M2 P D1 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M2 P D1 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M2 P D2 N2 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M2 P D2 N3 S2 S2 N1 D1 P M1 G1 R1 S;
    S R3 G3 M2 P D3 N3 S2 S2 N1 D1 P M1 G1 R1 S]
Line1=[M(n,1) M(n,2) M(n,3) M(n,4) M(n,5) M(n,6) M(n,7) M(n,8)  M(n,8) M(n,7) M(n,6) M(n,5) M(n,4) M(n,3) M(n,2) M(n,1)];
dur = 0.5;
Fs = 8192;
x = []; % x is blank row
for k=1:length(Line1)
    x = [x get_note(Line1(k),dur)];
end
sound(x,Fs); 