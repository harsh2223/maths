clear;
//Find the inverse Z-transform using long divison method
clc;
clear;
z=poly(0,'z')
x=ldiv(z^3-10*z^2-4*z+4,2*z^2-2*z-4,4);
disp(x,'x[n]=');
