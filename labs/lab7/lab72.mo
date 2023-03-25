model lab72
Real n;
Real N = 805;
Real t = time;
initial equation
n = 3;
equation
der(n) = (0.000015 + 0.29*n) * (N-n);
end lab72;