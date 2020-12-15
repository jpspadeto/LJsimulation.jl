#Computes the total Leonard-Jones potential energy 


  function U_total(p,data)
    ut = 0. 
    for i in 1:(data.N)-1, j in i+1:(data.N)
      dist = distpbc(p[i],p[j],data.side)
      if dist < data.cutoff 
        ut += upair(dist,data) 
      end 
    end
  return ut
end 
