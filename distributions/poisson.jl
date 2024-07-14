import Pkg

Pkg.add("Distributions")
Pkg.add("Plots")

using Distributions
using Plots

# Define parameters
λ = 1000.0

# Create Poisson distribution
dist = Poisson(λ)

# Generate random samples
num_samples = 1000
random_samples = rand(dist, num_samples)

# Plotting histogram
histogram(
    random_samples, bins=50, xlabel="k", ylabel="Frequency",
    title="Histogram of Poisson Distribution", legend=false
)

# Saving plot
savefig("plots/poisson.png")