makeCacheMatrix <- function(x=numeric()) {
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