#Computes the LJ potential energy of the system using linked lists

function u_total_ll(p,Data,first_atom,next_atom)
  ut = 0.
  for iat in 1:Data.N
    icell = trunc(Int64,p[iat][1]/Data.cutoff) + 1 
    jcell = trunc(Int64,p[iat][2]/Data.cutoff) + 1
    for i in 1:icell, j in 1:jcell 
      jat = first_atom[i,j]
      while jat > 0 
        if jat > iat 
          dist = distpbc(p[jat],p[iat],Data.side)
          if dist <= Data.cutoff
            ut += upair(dist,Data)
          end
        end
       jat = next_atom[jat]
      end
    end
  end
 return ut
end

