clear;
clc;

wc = 1; // Cut-off frequency
y = 1; // Initial index for x

// Create frequency vector
n = -%pi:0.1:%pi; // Use a smaller increment for better resolution
x = zeros(1, length(n)); // Initialize x with zeros

// Fill x based on the conditions
for i = 1:length(n)
    if n(i) < -wc | n(i) > wc then
        x(i) = 1;
    else
        x(i) = 0;
    end
end

// Plot x(e^jW)
figure(1);
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot(n, x);
xlabel('Frequency in radians/second');
title('x(e^{jW}) at wc=1');

// Calculate the integral
A = 11; // Constant for integration
x_integrated = zeros(1, 21); // Initialize for -10 to 10

for k = -10:10
    x_integrated(k + 11) = A * integrate('cos(w*k)', 'w', wc, %pi);
end

// Plot x(n) after integration
figure(2);
k = -10:10;
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3(k, x_integrated);
xlabel('Time in seconds');
title('x(n) at wc=1');
