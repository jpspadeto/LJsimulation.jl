# Leonard-Jones Potential Energy Simulation
This package was developed in Julia to calculate the Leonard-Jones Potential Energy in two dimensions using different implementations, such as naive particles, linked lists, periodic boundary conditions and CPU parallelization.
Enjoy it!  

## **Install with:** 

```
] add https://github.com/jpspadeto/LJsimulation.jl
```

## **To compute Leonard-Jones potential energy, the data to be used must be defined:**


*Using default data:*

```julia
julia> data = Data()

Data
  eps: Float64 5.0
  sig: Float64 0.5
  cutoff: Float64 2.0
  side: Float64 100.0
  N: Int64 10000
  eps4: Float64 20.0
  sig6: Float64 0.015625
  sig12: Float64 0.000244140625
```

*Using a different data, for example a cutoff:*

```julia
julia> data = Data(cutoff=1.0)

Data
  eps: Float64 5.0
  sig: Float64 0.5
  cutoff: Float64 1.0
  side: Float64 100.0
  N: Int64 10000
  eps4: Float64 20.0
  sig6: Float64 0.015625
  sig12: Float64 0.000244140625
```

*Creating the initial points for the calculation:*

```julia
julia> p = initial_point(data)
```

## **Naive Leonard-Jones potential energy of the system:**

```julia
julia> u_total_naive(p,data)
```

## **To compute the Leonard-Jones potential energy using linked lists, the parameters must be defined:**

*Sets the number of cells(nt), first_atom and next_atom:*

```julia
julia> nt, first_atom, next_atom = linkedlists(p,data)
```

## **Leonard-Jones potential energy using linked lists:**

```julia
julia> u_total_ll(p,data,first_atom,next_atom,nt) 
```

## **Leonard-Jones potential energy using linked lists and CPU parallelization:** 

```julia
julia> u_total_parallel(p,data,first_atom,next_atom,nt)
```
## **To compute Total Force and Leonard-Jones potential energy of the particles of the system:**

*Using a list of random values for the force vectors:*
```julia
julia> f = [ Vector{Float64}(undef,2) for i in 1:length(p) ] 
```

*To compute the Potential Energy and the Force Vector of every particle in the system:* 
```julia
julia> force_energy!(p,f,data)
```

*If you want to see the component forces of the vectors, for example, do:*
```julia
julia> f[1]
```
