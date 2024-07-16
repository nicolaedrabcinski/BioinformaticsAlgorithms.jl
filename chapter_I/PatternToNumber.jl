function PatternToNumber(Pattern::String)::Int
    mapping = Dict('A' => 0, 'C' => 1, 'G' => 2, 'T' => 3)
    number = 0

    for i in 1:length(Pattern)
        number = 4 * number + mapping[Pattern[i]]
    end

    return number
end