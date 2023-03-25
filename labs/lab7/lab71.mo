model lab71
Real n;
Real N = 805;
Real t = time;
initial equation
n = 3;
equation
der(n) = (0.14 + 0.00004*n) * (N-n);
end lab71;