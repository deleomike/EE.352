%%
%a
p=4+8
q=(1+5/16)/(2^4+3)
x=2*p^2+5*q+4
r=3; V=(4/3)*pi*r^3
h=((2.4+pi)/(3-sqrt(4^2+7^2)))^(2/3)
sqrt(5-j*6)
%%
%b
h=roots([1 0 0 ((2.4+pi)./(3-sqrt(4.^2+7.^2))).^(1/3)]);
h.^2
%%
%c
a=exp(3)
b=2*sin(pi/3)+3*cos(pi/6)
log(4)+log(5)/log(10)
tan((30/180)*pi)
asin(3/5)
a=3;b=5;C=(60/180)*pi;c=sqrt(a^2+b^2-2*a*b*cos(C))
%%
%d
z=((3+4*j)/(1-j*cos(0.2*pi)))
f=exp(j*pi/6)
10*exp((j*2*pi)/3)
%%
%e
exp(2*log(sqrt(7)))
%%
%f
A=[3.2 8 -1 0; 3 7.2 4.5 -2.3; -6.2 3.5 2 -3; -1.4 -2.2 0 4.5];
B=[2.2 7; 5 1 ;6 3.8; -2 0.5];
(A*B)'
%%
%g
inv(A)
%%
%h
A*inv(A)
A.*inv(A)
%%
%i
z=[0 0 0];
x=[1 -3 2];
y=[2 5 7];
for k=1:1:3
    z(k)=x(k)*y(k)
end
sum(z)
%%
%j
b=[1 0 -2 3]';
x = linsolve(A,b)
%%
%k
t = 0:0.05:5;   %interval
y1=1-2.*exp(-3.*t).*cos(2.*t+pi/3)
y2=1-2.*exp(-5.*t).*cos(2.*t+(2*(pi/3)))
plot(t,y1)
hold on
plot(t,y2)
%%
%I
x=0:0.04:4;
y=2.*exp(-0.8.*x).*sin(4.*x)
plot(x,y,'-.r','LineWidth',2)   %dotted line '-.', 'r' red, linewidth 2
xlabel('time');
ylabel('Amplitude');
hold on
y3=2*exp(-0.8.*x).*cos(4.*x)
plot(x,y3,'-.g','LineWidth',2)
text(2.8,1.8,'LEGEND:')
text(2.8,1.6,'Red -> y=2e^(-0.8x)*sin(4x)')
text(2.8,1.4,'Green -> y=2e^(-0.8x)*cos(4x)')
%%
%m
x=[2 -0.2  4 0 7];
y=[1; 3; -1; 1.3;9];
c=x*y
X=[2 0 -2 9 1; 0 7 4 -1 0.6; 3 1 3 1 -5; 5 3 -2 3 0; 1 -4 1 0.3 -0.6];
q=y'*X*y
A=[3 1 -5; -2 3 0; 1 0.3 -0.6]
B=A'
D=inv(A)
t=[0 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6]
t=[sqrt(0) sqrt(0.2) sqrt(0.4) sqrt(0.6) sqrt(0.8)]
r=0.8;
for n=1:1:21
    s(n)=r^(n-1)    %1->21 because matlab gives an error for 0->20
end
g=[sin(0.1) sin(0.2) sin(0.4) sin(0.8)]
h=1`%init h to 1
for k=1:1:89
    h = h*tan((k/180)*pi);
end

h=0;
for k=1:1:89
    h=log(tan((k/180)*pi))
end


