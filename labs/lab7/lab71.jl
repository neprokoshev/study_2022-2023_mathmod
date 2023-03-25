using InteractiveUtils
using DifferentialEquations
using LaTeXStrings
using Plots

function F!(du, u, p, t)
	du[1] = (0.14 + 0.00004*u[1]) * (N-u[1])
end

N = 805
u0 = [3, 0]
T = (0.0, 100.0)
prob = ODEProblem(F!, u0, T)

sol = solve(prob, dtmax = 0.05)

Time = sol.t
const X = Float64[]
for u in sol.u
	x, y = u
	push!(X, x)
end
X

plt = plot(
	layout = (1),
	dpi = 150,
	grid = :xy,
	size = (800, 400),
	plot_title = "Модель эффективности рекламы",)
	
plot!(
	plt[1],
	Time,
	X,
	xlabel = L"$t$",
	ylabel = L"$n(t)$",
	color = :red,
	label = L"$n(t)$",)
	
savefig(plt, "pic71.png")
