
"""
"Tradicionalmente, a computação científica exigia o mais alto desempenho, mas os especialistas em domínio mudaram amplamente para linguagens 
dinâmicas mais lentas para o trabalho diário. Acreditamos que há muitas boas razões para preferir linguagens dinâmicas para esses aplicativos 
e não esperamos que seu uso diminua. Felizmente, o design moderno de linguagem e as técnicas de compilador tornam possível eliminar 
principalmente a compensação de desempenho e fornecer um único ambiente produtivo o suficiente para prototipagem e eficiente o suficiente 
para implantar aplicativos de alto desempenho. A linguagem de programação Julia cumpre esse papel: é uma linguagem dinâmica flexível, 
apropriada para computação científica e numérica, com desempenho comparável às linguagens tradicionais de tipagem estática."- Texto retirado da Documentação.
"""

using Printf

function hello_julia()
    return println("Hello World")
end
#hello_julia()


# Math Functions
sum_values(x, y)         = (x + y)
subtraction_values(x, y) = (x - y)
multiply_values(x, y)    = (x ⋅ x)
division_values(x, y)    = (x ÷ y)
sqrt_values(x)           = √abs(x)
log_values(x)            = log(abs(x))

#sum_values(4, 5)

###### Vectors & Dicts
function create_vectors()
    f(x) = (x + ℯ^(log(abs(-33)^2)))

    Matrix = [1 2 3 ; 4 5 6]
    Vector = [1 2 3 4 5 6]
    Array  = [1, 2, 3, 4, 5, 6]
    Dict   = Dict("Key0" => 1, 
                "Key1" => 2,
                "Key3" => log(abs(3)))

    return map(f, Matrix)
            
#create_vectors()

###### Sorted a
function select_a(a)
    if a >= 8 && a < 9
        a = a + 2
        if a == 10
            print("A é igual a 10!")
        else
            print("A é diferente de 10")
        end
    elseif a <= 13 || a != 10
        a = a - 2
        if a <= 4 || a >= 2
            print("A é exatamente, ", a)
        else
            print("A é diferente de 2, 3 e 4")
        end
    else
        print("A é o numero", a)
    end
end


############ Loops
function car_prices()
    d1 = Dict("Car1" => 10000, "Car2" => 20000)

    for i in collect(1:2)
        println("Car Prices: ", d1["Car" * string(i)])
    end
end

car_prices()

function tabuada_bugada(x, y)
    for i in 1:10
        if i <= y
            j = i * 2
            println("$(i) multiplicado por 2 é $(j)")
        else
            j = i * x
            println("$(i) multiplicado pro 3 é $(j)")
        end
    end
end

tabuada_bugada(3, 4)

alphabet() = Dict(string(Char(p + 64)) => p for p in 1:26)

function matrix_m_m(v1, v2)   
    m1 = [(x * y) for x in v1, y in v2]
    m1 = [(log(abs(x)) * log(abs(y))) for x in v1, y in v2]
    return m1, m2
end

σ(x) = 1 ÷ (1 + exp(-x));
σ(300);

function complex_numbers(range)
    for i in 1:range
        println(log(10) + √i+2 - 2im)
        for k in -60:40
            println("\n", ((-π^2 + 6im)^k))
        end
    end
end

complex_numbers()

######### Julia Pandas
# using Pandas

# a = [1, 2, 3, 4 ]
# a = Pandas.Series(a)
# Pandas.DataFrame(a)


########### Cuatom Dependencies

# include("cohen_d.jl");
# include("statistics.jl");