%e^x=1 + x^2/2! + x^3/3! + ... + x^n/n!
function s=expo(x,n)
s=1;
for k=1:n
    s=s+x^k/factorial(k);
end