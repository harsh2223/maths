funcprot(0)
clf;
function dx=f(x, y)
    dx=exp(-x0);
endfunction
y0=0;
x0=0;
x=[0:0.5:10];
sol=ode(y0,x0,x,f);
plot2d(x,sol,5)
xlabel('x');
ylabel('y(x)');
xtitle('y(x) vs.x')
