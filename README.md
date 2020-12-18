# Leonard-Jones Potential Energy Simulation

## **Install with:** 

```
] add https://github.com/jpspadeto/LJsimulation.jl
```

## **To compute Leonard-Jones potential energy, the data to be used must be defined:**


*Using default data:*

```
data = Data()
```

```julia
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
data = Data(cutoff=1.0)
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

```
p = initial_point(data)
```

## **Naive Leonard-Jones potential energy of this system:**

```
u_total_naive(p,data)
```

## **To compute the Leonard-Jones potential energy using linked lists, the parameters must be defined:**

*Sets the number of cells(nt), first_atom and next_atom:*

```
nt, first_atom, next_atom = linkedlists(p,data)
```

## **Leonard-Jones potential energy using linked lists:**

```
u_total_ll(p,data,first_atom,next_atom,nt) 
```

## **Leonard-Jones potential energy using linked lists and CPU parallelization:** 

```
u_total_parallel(p,data,first_atom,next_atom,nt)
```
