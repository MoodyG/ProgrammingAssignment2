## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
xx <- makeInverse (matrix(c(1,2,3,4),2,2))
##The inverse hasn't been calculated at this point
xx$getsolve()
## NULL
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cachesolve(xx) #inverse will be returned
        ##       [,1] [,2]
        ## [1,]   -2   1.5
        ## [2,]   1    -0.5
        cachesolve(XX) #inverse gets returned from cache
        ##retrieves inverse
        ##      [,1]   [,2]
        ## [1,]  -2     1.5
        ## [2,]   1    -0.5
        xx$set(xx$getsolve())     #sets function call as computed inverse
        cachesolve(XX)
        ##       [,1]   [,2]
        ## [1,]   1       3
        ## [2,]   2       4
}

