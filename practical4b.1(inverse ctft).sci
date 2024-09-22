//Inverse Continuous Time Fourier Transform
//X(jW)=1, from -T1 to T1
clear;
clc;
close;
//CTFT
A=1;  //Amplitude
Dw=0.006;
W1=4;   //Time in seconds
w=-W1/2:Dw:W1/2;
for i=1:length(w)
    XW(i)=A;
end
XW=XW';
plot(w,XW);
xlabel('w in radians');
title('Continuous time fourier transform x(t)')
//
//Inverse continuous-time Fourier Transform
t=-%pi:%pi/length(w):%pi;
xt=(1/(2*%pi))*XW*exp(sqrt(-1)*w'*t)*Dw;
xt=real(xt);
figure
a=gca();
a.y_location="origin";
a.x_location="origin";
plot(t,xt);
xlabel('t time in Seconds');
title('Inverse Continous Time Fourier Transform x(t)')
