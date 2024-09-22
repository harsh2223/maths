clc;
clear;
close;
s=poly(0,'s')
N=(s+1)*(s+3);
D=(s+2)*(s+4);
F=N/D;
disp(F,'Given Transfer Function:');
zero=roots(N);
pole=roots(D);
disp(zero,'Zeros of transfer function:');
disp(pole,'Poles of transfer function:');
plzr(F)
