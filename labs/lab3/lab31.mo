model lab31
Real x;
Real y;
Real t = time;
initial equation
x = 33900;
y = 22400;
equation
der(x) = -0.44*x - 0.78*y + sin(3*t) + 1;
der(y) = -0.56*x - 0.66*y + cos(3*t) + 1;
end lab31;