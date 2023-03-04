model lab42
Real x;
Real y;
Real t = time;
initial equation
x = 0.3;
y = 0.7;
equation
der(x) = y;
der(y) = -1.7*y - 6*x;
end lab42;