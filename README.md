# LJsimulation

Install with: 

] add https://github.com/jpspadeto/LJsimulation.jl

To compute Leonard-Jones potential energy using the default data:

Using default data: 

data = Data()

Creating the initial points for the calculation:

p = initial_point(data)

Leonard-Jones potential energy of this system:

u_total_naive(p,data)

Sets the first_atom and next_atom:

nt, first_atom, next_atom = linkedlists(p,data)

Leonard-Jones potential energy of this system using linked lists:

u_total_ll(p,data,first_atom,next_atom,nt) 

