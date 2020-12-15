#
#Function to calculate the distance between two points considering PBC
#
function distpbc(p1,p2,side)
           dx = p1[1] - p2[1]
            x = mod(dx,side)
             if x > side/2 
              x = x - side 
             end 
             if x < -side/2 
              x = x + side
             end 
           dy = p1[2] - p2[2]
            y = mod(dy,side)
             if y > side/2 
              y = y - side 
             end 
             if y < -side/2 
              y = y + side
             end
             d12 = sqrt(x^2 + y^2)
           end 
