## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {

inv <- NULL                ##initialize inv as NULL
 set <- function(y) {
     x <<- y               ##set function sets y to x
     inv <<- NULL
 }
 get <- function() x       ##returns value of matrix x

 setinverse <- function(inverse) inv <<- inverse  ##sets an inverse matrix to inv
 getinverse <- function() inv                     ##returns matrix inv

 list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
           inv <- x$getinverse()       ## attempting to get the inverse of matrix x
           if(!is.null(inv)) {         ## if the inverse exists return it
                message("retriving cached data")
                return(inv)
                                      ##if it doesn't solve the inverse for x
            data <- x$get()
            inv <- solve(data, ...)   ## solving the inverse
            x$setinverse(inv)         ## setting the calculated inverse to inv
            inv                       ## return inv
}
