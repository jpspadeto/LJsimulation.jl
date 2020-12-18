# Leonard-Jones Potential Energy Simulation

**Install with:** 

```
] add https://github.com/jpspadeto/LJsimulation.jl
```

**To compute Leonard-Jones potential energy using the default data:**

*Using default data:*

```
data = Data()
```

*Using a different data, for example a cutoff:*

```
data = Data(cutoff=1.0)
```

**Creating the initial points for the calculation:**

```
p = initial_point(data)
```

**Leonard-Jones potential energy of this system:**

```
u_total_naive(p,data)
```

**Sets the first_atom and next_atom:**

```
nt, first_atom, next_atom = linkedlists(p,data)
```

**Leonard-Jones potential energy of this system using linked lists:**

```
u_total_ll(p,data,first_atom,next_atom,nt) 
```

**Leonard-Jones potential energy of this system using linked lists and parallelization:**

```
u_total_parallel(p,data,first_atom,next_atom,nt)
```
