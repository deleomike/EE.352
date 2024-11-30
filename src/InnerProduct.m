x=[1 -3 2];
y = [2 5 7];
z=[0 0 0];
for k=1:1:3
    z(k)=x(k)*y(k);
end
display(sum(z));