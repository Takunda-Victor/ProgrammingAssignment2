## The following 2 functions are used to cache the inverse of a matirx

## makeCacheMatrix is a function that lists 4 functions to:
#i. set the matrix values
#ii. get the matrix values
#iii. set the matrix inverse
#iv. get the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
  x <<- y
  inverse <<- NULL
  }
  get <- function()x
  setinverse <- function(inv)inverse <- inv
  getinverse <- function()inverse
  list(set = set,get = get,setinverse = setinverse, getinverse = getinverse)
}


## The following function determines the inverse of matrix passed on to it. If the inverse has already been calcuated it takes it from the Cache otherwise it computes it using the solve function

cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
        if(!is.null(inverse)){
          message("getting data from cache")
          return(inverse)
        }
        matrix <- x$get()
        inverse <- solve(matrix)
        x$setinverse(inverse)
        inverse
}
