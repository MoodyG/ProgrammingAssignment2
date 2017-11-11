## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## The makeCacheMatrix function takes a matrix as its argument and creates an object with the ability to set or get
## either the matrix or its inverse.


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
}




## The cacheSolve() function investigates whether the makeCacheMatrix object has stored the inverse of
## the matrix and returns it. If it hasn't stored the inverse of the matrix,
## the function gets the matrix and passes it to the solve function, which calculates the inverse of
## the matrix. cacheSolve() then uses setinverse() to store that inverse in the makeCacheMatrix object.


cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}




