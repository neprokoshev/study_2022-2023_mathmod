using InteractiveUtils
using DifferentialEquations
using LaTeXStrings
using Plots

function F!(du, u, p, t)
	du[1] = 0
	du[2] = -0.02*u[2]
	du[3] = 0.02*u[2]
end

u0 = [11469, 280, 51]
T = (0.0, 400.0)
prob = ODEProblem(F!, u0, T)

sol = solve(prob, dtmax = 0.05)

Time = sol.t
const S = Float64[]
const I = Float64[]
const R = Float64[]
for u in sol.u
	s, i, r = u
	push!(S, s)
	push!(I, i)
	push!(R, r)
end
S, I, R

plt = plot(
	layout = (1),
	dpi = 150,
	grid = :xy,
	size = (800, 500),
	plot_title = "Модель эпидемии",)
	
plot!(
	plt[1],
	Time,
	[S, I, R],
	xlabel = L"$t$",
	ylabel = L"$S(t)$ $I(t)$ $R(t)$",
	color = [:red :blue :green],
	label = [L"$S(t)$" L"$I(t)$" L"$R(t)$"],)
	
savefig(plt, "pic62.png")
