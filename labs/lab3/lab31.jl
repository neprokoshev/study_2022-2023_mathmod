using DifferentialEquations
using Plots

function F!(du, u, p, t)
    du[1] = -0.44*u[1] - 0.78*u[2] + sin(3*t) +1
    du[2] = -0.56*u[1] - 0.66*u[2] + cos(3*t) + 1
end

begin
    u0 = [33900, 22400]
    T = (0.0, 2.0)
    prob = ODEProblem(F!, u0, T)
end

sol = solve(prob, dtmax = 0.05)

Time = sol.t
const X = Float64[]
const Y = Float64[]
for u in sol.u
    x,y = u
    push!(X, x)
    push!(Y, y)
end

plt = plot(
    dpi = 300,
    size=(800, 400),
    plot_title = "Модель боевых действий:")
    
plot!(
    plt, 
    Time,
    X,
    xlabel = "Время",
    color = :red,
    label="Армия Х")
    

plot!(
    plt,
    Time,
    Y,
    ylabel = "Войска",
    color= :blue,
    label="Армия Y")
    
savefig(plt, "lab31.png")
