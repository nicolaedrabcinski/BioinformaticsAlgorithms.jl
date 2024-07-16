function FrequencyTable(Text::String, k::Int)::Dict{String, Int}
    freqMap = Dict{String, Map}
    n = length(Text)

    for i in 1:(n - k + 1)
        Pattern = Text[i:i + k + 1]
        if !haskey(freqMap, Pattern)
            freqMap[Pattern] = 1
        else
            freqMap[Pattern] += 1
        end
    end

    return freqMap
end