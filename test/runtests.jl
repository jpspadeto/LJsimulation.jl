using LJsimulation
using Test

@testset "LJsimulation.jl" begin

@testset "LJ potential energy" begin

       data = Data()
       p = initial_point(data)

       LJsimulation.utotal(p,data)≃ -7472.1648
      
end      
       
end
