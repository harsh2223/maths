function dx=f(t, x)
    dx(1)=x(2);
    dx(2)=1/(t+1)+sin(t)*sqrt(t);
endfunction
t=0:0.01:5*%pi;
t0=min(t);
y0=[0;-2];
y=ode(y0,t0,t,f);
plot(t,y(1,:),'LineWidth',2)
plot(t,y(2,:),'r','LineWidth',2)
xgrid();
xlabel('$t\quad[s]$','FontSize',3)
ylabel('$f(t,x)$','FontSize',3)
title(['Integration of''$\frac{d^2 x}{dt^2}=\frac{1}{t+1}+sint(t)\sqrt{t}$'],'FontSize',3)
legend(['$\Large{x}$''$\Large{dx/dt}$'],2)
