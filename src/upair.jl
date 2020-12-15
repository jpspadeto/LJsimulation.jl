# Compute the Leonard-Jones potential energy function

function upair(r,data)
  r6 = (r^2)^3
  r12 = (r^2)^6
  return data.eps4*(data.sig12/r12 - data.sig6/r6)

end
  
