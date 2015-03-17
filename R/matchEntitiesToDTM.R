matchEntitiesToDTM <-
  function(data, ents){
    require("NLP")
    terms = getTerms(data) # passed a dtm
    
    matches = lapply(ents, grep, terms)
    matches = unique(unlist(matches))
    
    return(matches)
    
  }