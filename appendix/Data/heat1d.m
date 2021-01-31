xh = linspace(0,1,256);
th = linspace(0,0.99,100);

m = 0;
sol = pdepe(m,@pdex1pde,@pdex1ic,@pdex1bc,xh,th);

uh = sol(:,:,1);

surf(xh,th,uh)
title('1D Heat')
xlabel('Distance x')
ylabel('Time t')

th = th';
xh = xh';
uh = uh';

save 'data_heat.mat' th xh uh