#= Entregable 2_3
La aguja de Buffon
f = cantidad de intersecciones/cantidad de tiradas
D = Distancia entre las rectas, se asume que la aguja cae siempre entre las dos rectas.
Aguja:
    L = largo de la aguja siempre menor que D.
    α = angulo en radianes (aleatorio)
    y = coordenada de la altura de la aguja
    no se toma en cuenta la coordenada x
La aguja intersecta a las rectas si:
    y+(L*Sen(α))/2 >= D
    y-(L*Sen(α))/2 <= 0
pi es aproximado a 2L/fD  .
 =#
 
 Base.@kwdef struct Buffon
    D::Float64=10
    L::Float64=8
end

function estimar_pi(B::Buffon, N=1000)
    x=0
    cortes=0
    while x<=N
        y=rand()*B.D
        α=rand()*pi
        if (y+((B.L/2)*sin(α))) >= B.D || (y-(B.L/2*sin(α))) <= 0
            cortes=cortes+1
        end 
        x=x+1
    end
    return (
        2B.L/(B.D*(cortes/N))
    )
end