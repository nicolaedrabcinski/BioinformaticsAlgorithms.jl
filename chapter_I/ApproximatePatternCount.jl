include("HammingDistance.jl")

function ApproximatePatternCount(Text::String, Pattern::String, d::Int)::Int
    count = 0
    text_length = length(Text)
    pattern_length = length(Pattern)

    for i in 1:(text_length - pattern_length + 1)
        PatternPrime = Text[i:i + pattern_length + 1]
        if HammingDistance(Pattern, PatternPrime) <= d
            count += 1
        end
    end


    return count
end