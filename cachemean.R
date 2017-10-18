cachemean <- function(x) {
  m <- x$getinv()
  m 
  if(!is.null(m)) {
     message("getting cached data")
     return(m)
    }
  
  x$setinv()
  x$getinv()
   
}
