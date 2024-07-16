function NumberToPattern(index::Int, k::Int)::String
    mapping = Dict(0 => 'A', 1 => 'C', 2 => 'G', 3 => 'T')
    pattern = ""

    for i in 1:k
        digit = index % 4
        pattern = string(mapping[digit], pattern)
        index = div(index, 4)
    end
    
    return pattern
end