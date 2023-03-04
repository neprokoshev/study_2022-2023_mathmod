model lab43
Real x;
Real y;
Real t = time;
initial equation
x = 0.3;
y = 0.7;
equation
der(x) = y;
der(y) = -3.6*y - 8*x + 0.6*cos(3*t);
end lab43;