function PatternCount(text::String, pattern::String)::Int
    count = 0
    text_length = length(text)
    pattern_length = length(pattern)

    for i in 1:(text_length - pattern_length + 1)
        if text[i:i + pattern_length - 1] == pattern
            count += 1
        end
    end

    return count
end