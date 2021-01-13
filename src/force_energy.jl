#Computes the force and energy of every particles of the system 

function force_energy!(p,f,data)
    ut = 0.
    for x in 1:length(f)
      f[x] .= 0.
    end
      for i in 1:(data.N)-1, j in i+1:(data.N)
        dist = distpbc(p[i],p[j],data.side)
          if dist <= data.cutoff
          upair, fpair = force_pair(p[i],p[j],dist,data)
          ut += upair
            f[i] .= f[i] .+ fpair
            f[j] .= f[j] .- fpair
          end
      end
    return ut, f
  end