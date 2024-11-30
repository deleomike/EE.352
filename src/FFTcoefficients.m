for i= 0:1:63
    for k= 0:1:63
        temp=exp(-j*((2*pi)/64)*i*k);
        x(i+1,k+1)=temp;
    end
end
csvwrite('fftdata.csv',x)