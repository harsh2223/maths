x0 = 0; 
xinc = 0.001; 
xf = 1; 
x = x0:xinc:xf;
// Calculate analytic solution
y = sqrt(x.^2 + 2*x + 0.01); 
// Plot analytic solution
subplot(2,1,1), plot(x, y), xgrid
ylabel('y(x)', 'fontsize', 2)
title('Analytic solution', 'fontsize', 2)
// Define differential equation
deff('yprim=f(x, y)', 'yprim = (x + 1) / y');
// Set initial condition
y0 = 0.1;
// Solve differential equation
ydiff = ode(y0, x0, x, f);
// Plot numeric solution
subplot(2,1,2), plot(x, ydiff, 'r'), xgrid 
title('Numeric solution', 'fontsize', 2) 
ylabel('y(x)', 'fontsize', 2)
xlabel('x', 'fontsize', 2)
