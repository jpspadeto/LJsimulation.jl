#PBC for the linked cells/lists

function wrap_cell(n,icell,jcell)   
    if icell < 1
      icell = n
    end
      if icell > n
        icell = 1
      end
    if jcell < 1
      jcell = n
    end
      if jcell > n
        jcell = 1
      end
  return(icell,jcell)
  end