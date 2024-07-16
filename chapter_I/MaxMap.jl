function MaxMap(freqMap::Dict{String, Int})::Int
    return maximum(values(freqMap))
end