using InteractiveUtils
using DifferentialEquations
using LaTeXStrings
using Plots

# x'' + 3.6x' + 8x = 0.6cos(3t) => x'' = -3.6x' - 8x + 0.6cos(3t)

function F!(du, u, p, t)
	du[1] = u[2]
	du[2] = -3.6*u[2] -8*u[1] + 0.6*cos(3*t)
end

u0 = [0.3, 0.7]
T = (0.0, 66.0)
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
	layout = (1, 2),
	dpi = 150,
	grid = :xy,
	aspect_ratio = :equal,
	size = (800, 400),
	plot_title = "Модель гармонических колебаний",)
	
plot!(
	plt[1],
	Time,
	[X, Y],
	xlabel = L"$t$",
	ylabel = L"$x(t)$ $y(t)$",
	color = [:red :blue],
	label = [L"$x(t)$" L"$y(t)$"],)
	
plot!(
	plt[2],
	X,
	Y,
	color = :green,
	xlabel = L"$x(t)$",
	ylabel = L"$y(t)$",
	label= "Фазовый портрет",)
	
savefig(plt, "pic43.png")
