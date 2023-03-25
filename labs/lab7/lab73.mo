model lab73
Real n;
Real N = 805;
Real t = time;
initial equation
n = 3;
equation
der(n) = (0.5*sin(0.5*t) + 0.7*cos(0.7*t)*n) * (N-n);
end lab73;