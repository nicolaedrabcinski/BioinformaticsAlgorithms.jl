include("PatternCount.jl")

function FrequentWords(Text::String, k::Int)::Vector{String}
    FrequentPatterns = String[]
    text_length = length(Text)
    Count = zeros(Int, text_length - k + 1)

    for i in 1:(text_length - k + 1)
        Pattern = Text[i:i + k - 1]
        Count[i] = PatternCount(Text, Pattern)
    end

    max_count = maximum(Count)

    for i in 1:(text_length - k + 1)
        if Count[i] == max_count
            push!(FrequentPatterns, Text[i:i + k - 1])
        end
    end

    return collect(FrequentPatterns)
end