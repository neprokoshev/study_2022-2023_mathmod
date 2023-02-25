model lab32
Real x;
Real y;
Real t = time;
initial equation
x = 33900;
y = 22400;
equation
der(x) = -0.37*x - 0.79*y + sin(2*t) + 1;
der(y) = -0.27*x*y - 0.78*y + cos(2*t) + 1;
end lab32;