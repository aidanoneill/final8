getEntities.numbers <- function(data){
  require("NLP")
  
  entities = list()
  for(i in 1:length(data)){
    docAsString = apply(as.matrix(data[[i]]$content), 1, FUN=as.String) # Converts the text content a corpus element to a string
    entities[[i]] = apply(as.matrix(docAsString), 1, findEntities.string) # Passes each converted string element through the string punctuation removal function and reassigns to the passed corpus
  }
  return(entities)
}
