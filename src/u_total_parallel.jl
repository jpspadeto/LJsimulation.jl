#Computes the LJ potential energy of the system using linked lists and parallelization


function u_total_parallel(p,Data,first_atom,next_atom,nt) 
  nthreads = Threads.nthreads()
  ut = zeros(nthreads)
  
  Threads.@threads for iat in 1:Data.N
    icell = trunc(Int64,p[iat][1]/Data.cutoff) + 1 
    jcell = trunc(Int64,p[iat][2]/Data.cutoff) + 1
    for i in icell-1:icell+1, j in jcell-1:jcell+1 
      id = Threads.threadid()
      iw, jw = wrap_cell(nt,i,j)
      jat = first_atom[iw,jw]
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

