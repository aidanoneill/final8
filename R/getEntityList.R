getEntityList <-
  function(data){
    
    corpusAsString = paste((toMatrix(data)), collapse=" ")
    
    ents = getEntities.numbers.string(corpusAsString)
    
    return(unique(ents))
    
  }