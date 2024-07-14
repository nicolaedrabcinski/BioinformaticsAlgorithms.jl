import Pkg

Pkg.add("HypothesisTests")

using HypothesisTests

observed = [10, 15, 5, 20]
expected = [12, 15, 8, 18]

chi2_statistics = ChisqTest(observed, expected)

p_value = pvalue(chi2_statistics)

println("Chi-square test statistics: ", chi2_statistics)
println("Chi-square test p-value: ", p_value)