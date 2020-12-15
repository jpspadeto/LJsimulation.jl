#
# Generate an initial point in a grid, with a minimum distance defined
#

import Random

# Function that introduces a perturbation in the grid point
perturbation(step,σ) = -σ + 2*σ*rand()

function initial_point(N,side,tol;seed=123)

  # Use a different seed if desired
  if seed > 0
    Random.seed!(seed)
  else
    Random.seed!()
  end
  p = [ zeros(2) for i in 1:N ]

  # Properties of the regular grid
  l = ceil(Int,sqrt(N))
  step = (side-tol)/l
  if tol > step
    error("tol must be smaller than (side-tol)/√N = $step")
  end

  # The grid has l^2 points, but this is generally greater
  # than N. Thus, we generate list of points to be skiped 
  skip = Int[]
  while length(skip) < l^2 - N
    i = rand(1:l^2)
    if findfirst(isequal(i), skip) == nothing
      push!(skip,i)
    end
  end

  # Maximum perturbation
  σ = (step-tol)/2

  # Generate points
  ip = 0
  igrid = 0 
  x = [ tol/2, tol/2 ]
  for i in 1:l 
    for j in 1:l
      igrid += 1
      if findfirst(isequal(igrid),skip) != nothing
        continue
      end
      # update x, with a perturbation of ±0.1*step
      ip += 1
      p[ip] .= x .+ perturbation(step,σ)
      x[2] = x[2] + step 
    end
    x[2] = tol/2
    x[1] = x[1] + step
  end
  return p
end
