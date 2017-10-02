clear, clc;
z = linspace(0, 1, 101);
r = sin(3*pi*z) + 1.5;
[X, Y, Z] = cylinder(r, 50);
c = surf(X, Y, Z);
axis square;
view(-38.5, 26);