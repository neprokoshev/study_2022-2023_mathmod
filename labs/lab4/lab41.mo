model lab41
Real x;
Real y;
Real t = time;
initial equation
x = 0.3;
y = 0.7;
equation
der(x) = y;
der(y) = -17*x;
end lab41;