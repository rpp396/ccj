#= 
julia> transcribir(ADN("CCTAGGACCAGGTT"))
ARN("UUGGACCAGGAUCC") 
To do:
1 Invertir la cadena de ADN --- method reverse(s::Union{SubString{String}, String}) in Base at strings/substring.jl:166
2 Cambiar las T por U --- method replace(str::String, pat_repl::Vararg{Pair, N}; count) where N in Base at strings/util.jl:535
3 Instanciar un ARN que sea deveuelto por la función
=#

struct ADN
    dat::String
end
struct ARN
    dat::String
end


function transcribir(seq::ADN)
    #invierto cadena ADN
    seq_invertido = reverse(seq.dat)
    #sustituir T por U
    seq_T_por_U = replace(seq_invertido, "T"=>"U")
    return(arn=ARN(seq_T_por_U))
end
