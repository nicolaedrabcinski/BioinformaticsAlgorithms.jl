include("FrequencyTable.jl")
include("MaxMap.jl")

function BetterFrequentWords(Text::String, k::Int)::Vector{String}
    FrequentPatterns = String[]
    freqMap = FrequencyTable(Text, k)
    maxCount = MaxMap(freqMap)

    for Pattern in keys(freqMap)
        if freqMap[Pattern] == maxCount
            push!(FrequentPatterns, Pattern)
        end
    end

    return FrequentPatterns
end
