## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function creates a matrix object which is a list of folowing functions:
## set the matrix values based on user input
## get the matrix elements
## setinv - calculate the inverse of matrix using solve function
## getinv - get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  inv <- NULL
  get <- function() {
       prompt="The matrix is : " 
       mat1 <<- mat
       mat1       
    
      }
  set <- function() {
       input <- readline(prompt="Enter elements of the matrix separated by spaces: ")
       row <- readline(prompt="Enter number of rows: ")
       row <- as.integer(row)
       col <- readline(prompt="Enter number of columns: ")
       col <- as.integer(col)
 
       input_vector <- unlist(strsplit(input, split=" "))
       input_vector <- as.integer(input_vector)
       mat <<- matrix(input_vector,nrow = row,ncol = col)
   
       }
  setinv <- function() inv <<- solve(mat)
  getinv <- function() {
        inv1 <<- inv
        inv1
        }
 
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}



## cachesolve function calculates inverse of matrix object created in makeCacheMatrix function.
## if the inverse is already cached, it is retrieved from cache and displyed to the user

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getinv()
        if(!is.null(m)) {
           message("getting cached data")
           return(m)
         }  
       x$setinv()
       x$getinv()
}
