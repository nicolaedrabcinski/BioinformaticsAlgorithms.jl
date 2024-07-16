include("NumberToPattern.jl")
include("ComputingFrequencies.jl")

function FasterFrequentWords(Text::String, k::Int)::Vector{String}
    FrequentPatterns = String[]
    FrequentArray = ComputingFrequencies(Text, k)
    maxCount = maximum(FrequentArray)

    for i in 1:length(FrequentArray)
        if FrequentArray[i] == maxCount
            pattern = NumberToPattern(i - 1, k)
            push!(FrequentPatterns, pattern)
        end
    end

    return FrequentPatterns

end