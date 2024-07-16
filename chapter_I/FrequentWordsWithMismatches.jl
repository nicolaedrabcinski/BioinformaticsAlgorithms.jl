include("Neighbors.jl")
include("MaxMap.jl")

function FrequentWordsWithMismatches(Text::String, k::Int, d::Int)::Vector{String}
    Patterns = String[]
    freqMap = Dict{String, Int}()
    n = length(Text)

    for i in 1:(n - k + 1)
        Pattern = Text[i:i + k - 1]
        neighborhood = Neighbors(Pattern, d)

        for neighbor in neighborhood
            if !haskey(freqMap, neighbor)
                freqMap[neighbor] = 1
            else
                freqMap[neighbor] += 1
            end
        end
    end

    m = MaxMap(freqMap)

    for (Pattern, count) in freqMap
        if count == m
            push!(Patterns, Pattern)
        end
    end

    return Patterns

end