model lab61
Real s;
Real i;
Real r;
Real t = time;
initial equation
s = 11469;
i = 280;
r = 51;
equation
der(s) = -0.01*s;
der(i) = 0.01*s - 0.02*i;
der(r) = 0.02*i;
end lab61;