#Computes the force and energy of every particles of the system 

function force_energy!(p,f,Data)
    ut = 0.
    for x in 1:length(f)
      f[x] .= 0.
    end
      for i in 1:Data.N-1, j in i+1:Data.N
        dist = dmin(p[i],p[j],Data.side)
          if dist <= Data.cutoff
          upair, fpair = force_pair(p[i],p[j],dist,Data)
          ut += upair
            f[i] .= f[i] .+ fpair
            f[j] .= f[j] .- fpair
          end
      end
    return ut, f
  end