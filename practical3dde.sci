function y=u(t)
    y=(sign(t)+1)/2
endfunction
L=0.001
R=10
C=0.000001
function zdot=f(t,y)
    zdot(1)=y(2);
    zdot(2)=(u(t)-y(1)-L*y(2)/R)/(L*C);
endfunction
y0=[0;0];
t0=0;
t=0:0.00001:0.001;
out=ode(y0,t0,t,f);
clf();
plot(out);
function y=u(t)
    y=(sign(t)+1)/2
endfunction
L=0.001
R=10
C=0.000001
function zdot=f(t,y)
    zdot=[y(2);(u(t)-y(1)-L*y(2)/R)/(L*C)];
endfunction
y0=[0;0];
t0=0;
t=0:0.00001:0.001;
out=ode(y0,t0,t,f);
clf();
subplot(211)
plot(t,out(1,:),"r.--");
subplot(212)
plot(t,out(2,:),"b-..");
