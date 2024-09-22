//To plot the response of system analytically and using scilab
clear;
clc;
close;
n=0:1:20;
x=ones(1,length(n));
b=[0 1];
a=[1 -1 -1];
yanaly=0.447*(1.618).^n-0.447*(-0.618).^n;//Analytical Solution
[ymat,zf]=filter(b,a,x);
subplot(3,1,1);
plot2d3(n,x);
xlabel('n');
ylabel('x(n)');
title('Input Sequence(Step function)');
subplot(3,1,2);
plot2d3(n,yanaly);
xlabel('n');
ylabel('y(n)');
title('Output Sequence yanaly');
subplot(3,1,3);
plot2d3(n,ymat,zf);
xlabel('n');
ylabel('y(n)');
title('Output Sequence ymat')
