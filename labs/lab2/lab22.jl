using DifferentialEquations
using Plots

function F(u, p, t)
  v = 4.3
  return u/sqrt(v^2-1)
end
 
const k = 10.5
const u = k/ 3.3
const T = (0, 3pi)
const tetha = 3/4*pi
const r = u*exp(tetha/sqrt(17.49))
 
prob = ODEProblem(F, u, T)
 
sol = solve(
  prob,
  dtmax=0.05
)

plt = plot(
  proj =:polar,
  aspect_ratio =:equal,
  dpi = 300,
  legend = true,
  title="Лабораторная Работа №2 (2 случай):",
)

plot!(
  plt,
  [0.0, 0.0],
  [-k, u],
  label="Путь катера до начала спирали",
  color =:pink; 
)

plot!(
  plt,
  sol.t,
  sol.u,
  label="Траектория катера по спирали",
  color =:red,
)

plot!(
  plt,
  [1, 1]*tetha,
  [0, 30],
  label="Траектория лодки",
  color =:blue,
)

plot!(
  plt,
  [1, 1] * tetha,
  [r, r],
  seriestype =:scatter,
  markersize = 2,
  label="Место столкновения",
  color =:purple,
)

savefig(plt, "lab22.png")
