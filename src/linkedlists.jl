#This function uses linked lists relationed to the initial_point to reduces the memory usage and speed up the LJ potential energy calculations

function linkedlists(p, Data)         
  Nt = trunc(Int64, Data.side / Data.cutoff) 
  first_atom = zeros(Int64,Nt, Nt) 
  next_atom = zeros(Int64, Data.N)

  for iat in 1:Data.N
    icell = trunc(Int64, p[iat][1]/Data.cutoff) + 1
    jcell = trunc(Int64, p[iat][2]/Data.cutoff) + 1 
    next_atom[iat] = first_atom[icell,jcell] 
    first_atom[icell,jcell] = iat 
  end
 return Nt, first_atom,next_atom
end
