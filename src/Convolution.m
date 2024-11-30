%%
t=-5:0.001:15
t2=-5:0.0005:15
A=3;
a=2;
B=5;
l=8;

x1=(A/a)*(ramp(t)-ramp(t-a));
x2=(A/a)*ramp(t)-(A/a+(A/(B-a)))*ramp(t-a)+(A/(B-a))*ramp(t-B);
x3=(A/a)*(ramp(t)-ramp(t-a))-(A/(l-B))*(ramp(t-B)-ramp(t-l));

x4=exp(-2.*t).*unitstep(t);
x5=unitstep(t)-unitstep(t-3);
%x4=dirac(0);
x11=conv(x4,x5);
%plot(t,x4,'LineWidth',2)
hold on
%plot(t,x5)
hold on
plot(t2,x11)

%quintic function
function q = quint(x);
q = max(0,(x^4)/24);
end
%cubic function
function c = cubic(x);
c = max(0,(x^3)/6);
end
%quadratic
function p = quad(x);
p = (x.^2).*(x>=0);
end
%ramp functio
function r = ramp(x);
r =  x.*(x>=0);
end
%unit step function
function u = unitstep(x);
u = x>=0;
end