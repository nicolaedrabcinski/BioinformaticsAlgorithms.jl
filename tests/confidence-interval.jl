import Pkg

Pkg.add("StatsBase")

using StatsBase
using Distributions

data = [23.4, 25.1, 21.8, 24.5, 22.1]

confidence_level = 0.95

n = length(data)
mean_data = mean(data)
std_data = std(data)

df = n - 1

α = 1 - confidence_level
t_critical = quantile(TDist(df), 1 - α / 2)

margin_of_error = t_critical * std_data / sqrt(n)

lower_bound = mean_data - margin_of_error
upper_bound = mean_data + margin_of_error

println("Confidence interval (", confidence_level * 100, "%): [", lower_bound, ", ", upper_bound, "]")