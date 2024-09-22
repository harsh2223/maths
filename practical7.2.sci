clc;
clear;
close;
s=poly(0,'s');
l=3*s/(s+2)/(s+4)
disp(l,'Given Transfer Function:');
zero=roots(3*s);
pole=roots((s+2)*(s+4));
disp(zero,'Zeros of transfer function:');
disp(pole,'Poles of transfer function:');
plzr(l)
