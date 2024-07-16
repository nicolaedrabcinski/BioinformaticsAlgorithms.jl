include("PatternToNumber.jl")

function ComputingFrequencies(Text::String, k::Int)::Vector{Int}
    frequency_array = zeros(Int, 4^k)
    text_length = length(Text)

    for i in 1:(text_length - k + 1)
        pattern = Text[i:i + k - 1]
        j = PatternToNumber(pattern)
        frequency_array[j + 1] += 1
    end

    return frequency_array
end