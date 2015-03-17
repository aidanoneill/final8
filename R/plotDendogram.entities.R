plotDendogram.entities <-
  function(data, dataM, ents, n){
    
    mat = dataM[, matchEntitiesToDTM(data = data, ents = ents)]
    sums = apply(mat, 2, sum)
    term.index = tail(sort(sums, index.return=TRUE)$ix, n)
    mat = mat[, term.index]
    
    dissimilarity = dist(t(mat))
    clusters = hclust(dissimilarity)
    return(plot(clusters, xlab="Entities", main="Entity Clusters Dendogram"))
    
  }