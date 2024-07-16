include("FrequencyTable.jl")

function FindClumps(Text::String, k::Int, L::Int, t::Int)::Vector{String}
    Patterns = String[]
    n = length(Text)

    for i in 0:(n - L)
        Window = Text[i+1:i+L]
        freqMap = FrequencyTable(Window, k)

        for s in keys(freqMap)
            if freqMap[s] >= t
                push!(Patterns, s)
            end
        end
    end

    return unique(Patterns)
end