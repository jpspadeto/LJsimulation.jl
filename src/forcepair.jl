#Function which compute the Energy and Force of the system

function force_pair(p1,p2,r,Data)

 r6 = (r^2)^3
 r12 = (r^2)^6
 r13 = r12*r
 r7 = r6*r
    
 dudr1 = -12*(Data.sig12/r13) 
 dudr2 = 6*(Data.sig6/r7)
    
 drdx = -(p1[1]-p2[1])/r
 drdy = -(p1[2]-p2[2])/r
    
  upair = Data.eps4*(Data.sig12/r12 - Data.sig6/r6)
  fx = (Data.eps4*(dudr1*drdx + dudr2*drdx), Data.eps4*(dudr1*drdy + dudr2*drdy))
    
 return upair,fx
end