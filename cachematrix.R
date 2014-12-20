## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y){
          x <<- y
          m <- NULL
     }

getMatrix <- function(){
     x
}

cacheInv <- function(solve){
     c <<- solve
}

getInv <- function(){
     c
}
}

## Calculates the inverse of a matrix created by makeCacheMatrix

cacheSolve <- function(x, ...) {
     Inv <- x$getInv
     if(!is.null(Inv)) {
          message("getting cached data")
     }
     data <- x$getMatrix()
     Inv <- solve(data, ...)
     x$cacheInv(Inv)
     Inv
}
