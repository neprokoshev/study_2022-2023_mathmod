using InteractiveUtils
using DifferentialEquations
using LaTeXStrings
using Plots

p_cr = 25
tau1 = 28
p1 = 6
tau2 = 14
p2 = 11
V = 33
q = 1

a1 = p_cr/(tau1*tau1*p1*p1*V*q)
a2 = p_cr/(tau2*tau2*p2*p2*V*q)
b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*V*q)
c1 = (p_cr-p1)/(tau1*p1)
c2 = (p_cr-p2)/(tau2*p2)

function F!(du, u, p, t)
	du[1] = u[1] - (b/c1)*u[1]*u[2] - (a1/c1)*u[1]*u[1]
	du[2] = (c2/c1)*u[2] - (b/c1)*u[1]*u[2] - (a2/c1)*u[2]*u[2]
end

u0 = [3.4, 2.1]
T = (0.0, 50.0)
prob = ODEProblem(F!, u0, T)

sol = solve(prob, dtmax = 0.05)

Time = sol.t
const X = Float64[]
const Y = Float64[]
for u in sol.u
	x, y = u
	push!(X, x)
	push!(Y, y)
end
X, Y

plt = plot(
	layout = (1),
	dpi = 150,
	grid = :xy,
	size = (800, 500),
	plot_title = "Модель конкуренции двух фирм",)
	
plot!(
	plt[1],
	Time,
	[X, Y],
	xlabel = L"$t$",
	ylabel = L"$M1(t)$ $M2(t)$",
	color = [:red :blue],
	label = [L"$M1(t)$" L"$M2(t)$"],)
	
savefig(plt, "pic81.png")
