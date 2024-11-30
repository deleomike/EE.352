%Beetoven352.m
E = 44; E_=32; Ee = 56;
P = 0; %pause
F = 45;
A = 49; A_ = 37;
C = 40; C_ =  28;
D = 42;
G = 47; G_ = 35;
B = 51;
Line1=[E D E D E B D C A  P C_ E_ A B  P E_ G_ B C  P E_ E D];
Line2=[P P P P P P P P A_ E A  P  P E_ E G  P  P A_ E A  P P];

Line3=[E D E B D C A  P C_ E_ A  B  P  P E_ C B A  P P E D E D E B D C];
Line4=[P P P P P P A_ E A  P  P  E_ E  G P  P P A_ E A P P P P P P P P];

Line5=[A  P P C_ E_ A B  P P E_ G B C  P P E_ E D E D E B D C A  P P C_ E_ A];
Line6=[A_ E A P  P  P E_ E G P  P P A_ E A P  P P P P P P P P A_ E A P  P  P];

Line7=[B  P P E_ C B A  P P B C D E  P P G E E D  P P E_ E D C P P E_  D C];
Line8=[E_ E G P  P P A_ E A P P P C_ G C P P P G_ G B P  P P A_  E A P P P];

 Line9=[B  E_ E_ E E_ E E Ee D E D E D E B D C A P P C_ E_ A B P P E_ G_ B];
Line10=[E_ E  P  P P  P P P  P P P P P P P P P A_ E A P P P E_ E G P P P];

Line11=[C  P P E_ E D E D E B D C A  P P C_ E_ A B  P P E_ C B A  P P];
Line12=[A_ E A P  P P P P P P P P A_ E A P  P  P E_ E G P  P P A_ E A P P];

Lines=[Line1 Line2 Line3 Line4 Line5 Line6 Line7 Line8 Line9 Line10 Line11 Line12];
dur = 0.5;
Fs=8192;
x=[]; %X is blank row'
for k=1:length(Lines)
    x=[x get_note(Lines(k),dur)];
end
sound(x,Fs);

%melakartha(40);