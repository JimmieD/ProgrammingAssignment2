## Put comments here that give an overall description of what your
## functions do

## The first function, makeVector creates a matrix
##gets the matrix
##caches the inverse
##and gets the inverse

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

cacheSolve <- function(a, ...) {
     Inv <- a$getInv
     if(!is.null(Inv)) {
          message("getting cached data")
     }
     data <- a$getMatrix()
     Inv <- solve(data, ...)
     a$cacheInv(Inv)
     Inv
}
