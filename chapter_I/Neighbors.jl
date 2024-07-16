include("HammingDistance.jl")

function Neighbors(Pattern::String, d::Int)::Vector{String}
    if d == 0
        return [Pattern]
    elseif length(Pattern) == 1
        return ["A", "C", "G", "T"]
    else
        Neighborhood = String[]
        SuffixNeighbors = Neighbors(Pattern[2:end], d)

        for Text in SuffixNeighbors
            if HammingDistance(Pattern[2:end], Text) < d
                for nucleotide in ["A", "C", "G", "T"]
                    push!(Neighborhood, nucleotide * Text)
                end
            else
                push!(Neighborhood, Pattern[1] * Text)
            end
        end

        return Neighborhood
    
    end
end