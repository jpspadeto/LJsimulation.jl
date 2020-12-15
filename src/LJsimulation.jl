module LJsimulation

  include("Data.jl") #Data structures for the simulation
  export Data

  include("./initial-point.jl") #Initial points to do the simulations
  export initial_point

  include("./distpbc.jl") #Computes the distance between two points considering PBC

  include("./upair.jl") #Computes the Leonard-Jones potential energy between twoparticles
  include("./u_total_naive.jl") #Computes the total LJ potential energy
  export u_total_naive


end
