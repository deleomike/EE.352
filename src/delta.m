function y = delta(n)
% We assume a scalar input
% assume zero
y = 0;

if n >= 0
    y = unitstep(n) - unitstep(n-1)
end
