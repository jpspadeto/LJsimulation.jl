# Leonard-Jones Potential Energy Simulation

**Install with:** 

```
] add https://github.com/jpspadeto/LJsimulation.jl
```

**To compute Leonard-Jones potential energy, the data to be used must be defined:**

*Using default data:*

```
data = Data()
```

*Using a different data, for example a cutoff:*

```
data = Data(cutoff=1.0)
```

*Creating the initial points for the calculation:*

```
p = initial_point(data)
```

*Naive Leonard-Jones potential energy of this system:*

```
u_total_naive(p,data)
```

**To compute the Leonard-Jones potential energy using linked lists, the parameters must be defined:**

*Sets the number of cells(nt), first_atom and next_atom:*

```
nt, first_atom, next_atom = linkedlists(p,data)
```

*Therefore, the calculation of Leonard-Jones potential energy using linked lists:*

```
u_total_ll(p,data,first_atom,next_atom,nt) 
```

*Using a CPU parallelization:*

```
u_total_parallel(p,data,first_atom,next_atom,nt)
```
