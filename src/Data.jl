# Data for the simulation

using Parameters

  @with_kw struct Data
   N :: Int64 = 10_000

   eps :: Float64 = 5.0
   sig :: Float64 = 0.5

   cutoff :: Float64 = 2.0
   side :: Float64 = 100

   sig6 :: Float64 = (sig^2)^3
   eps4 :: Float64 = 4*eps
   sig12 :: Float64 = (sig^2)^6

end

   
