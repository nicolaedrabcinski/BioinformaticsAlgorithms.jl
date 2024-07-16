function HammingDistance(p::String, q::String)::Int
    if length(p) != length(b)
        error("Strings are not equal!")
    end

    dist = 0
    for i in 1:length(p)
        if p[i] != q[i]
            dist += 1
        end
    end

    return dist
end