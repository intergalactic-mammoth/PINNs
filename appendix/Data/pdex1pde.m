function [c, f, s] = pdex1pde (x, t, T, Tx)
    
    c = pi^2;
    f = Tx;
    s = 0;
end


function T0 = pdex1ic(x)
T0 = sin(pi*x);
end

function [pl,ql,pr,qr] = pdex1bc(xl,Tl,xr,Tr,t)
pl = Tl;
ql = 0;
pr = pi * exp(-t);
qr = 1;
end

