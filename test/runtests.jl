using LJsimulation
using Test

@testset "LJsimulation.jl" begin
    p1 = [12,12]
    p2 = [10,10]
   side = 10
@test LJsimulation.distpbc(p1,p2,side) = sqrt(16)
end
