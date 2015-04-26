## Put comments here that give an overall description of what your
## functions do

## Takes a matrix and stores in cache its inverse, calculated with function solve

makeCacheMatrix <- function(x = matrix()) {

    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <-function() x
    setmatrix <- function(solve) m <<- solve
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix, 
         getmatrix = getmatrix)

}


## Returns the inverse of an invertible matrix, recovering result from cache, if work had been done before

cacheSolve <- function(x, ...) {
    ## Returns the inverse matrix of 'x'
    m <- x$getmatrix()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
        
}
