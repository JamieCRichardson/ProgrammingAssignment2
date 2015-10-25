##Create a cached matrix and use the solve function to return
##the invers of the matrix

## Create cached matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL  #create variable m with null value
  set <- function(y) {  
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) m <<- solve #set the value
  getSolve <- function() m  #get the value
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## Return the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...) #calculate the inverse of the matrix
  x$setSolve(m)
  m
}
