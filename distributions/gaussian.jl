import Pkg

Pkg.add("Distributions")
Pkg.add("Plots")

using Distributions
using Plots

# Parameters of distribution
μ = 0.0
σ = 1.0

# Creating of Gaussian distribution
dist = Normal(μ, σ)

# Generation random values from distribution
data = rand(dist, 1000)

# Visualization of distribution
histogram(
    data, bins=50, label="Histogram of Data",
    xlabel="Values", ylabel="Frequencies", title="Normal Distribution"
)

# Saving plot
savefig("templates.jl/distributions/plots/gaussian.png")