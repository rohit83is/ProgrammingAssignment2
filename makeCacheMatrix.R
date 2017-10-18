makeCacheMatrix <- function() {
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