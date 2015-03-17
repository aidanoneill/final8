entitiesAsHTML <-
  function(data){
    
    ents = getEntityList(data)
    
    return(matrixAsHTML(as.matrix(ents)))
    
  }