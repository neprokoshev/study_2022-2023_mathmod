model lab82
Real M1;
Real M2;
Real p_cr = 25;
Real tau1 = 28;
Real p1 = 6;
Real tau2 = 14;
Real p2 = 11;
Real V = 33;
Real q = 1;
Real a1 = p_cr/(tau1*tau1*p1*p1*V*q);
Real a2 = p_cr/(tau2*tau2*p2*p2*V*q);
Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*V*q);
Real c1 = (p_cr-p1)/(tau1*p1);
Real c2 = (p_cr-p2)/(tau2*p2);
Real t = time;
initial equation
M1 = 3.4;
M2 = 2.1;
equation
der(M1) = M1 - (b/c1)*M1*M2 - (a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2 - (b/c1 + 0.0003)*M1*M2 - (a2/c1)*M2*M2;
end lab82;