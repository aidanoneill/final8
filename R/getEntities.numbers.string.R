getEntities.numbers.string <- 
  function(s){
    require("NLP")
    g = strsplit(gsub("[[:alpha:]]", "", s), " ")
    l = lapply(g[[1]], function(x) ifelse(nchar(gsub("[[:punct:]]", "", x))==0, TRUE, FALSE))
    return(g[[1]][which(l ==FALSE)])
  }