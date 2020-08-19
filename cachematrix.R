## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## A pair of functions that cache the inverse of a matrix

## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        
## Initialize the inverse property        
        inv <- NULL

## Method to set the matrix
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
 ## Method the get the matrix
    get <- function() x  
 
## Method to set the inverse of the matrix
    setInverse <- function(inverse) inv <<- inverse
## Method to get the inverse of the matrix
    getInverse <- function() inv
## Return a list of the methods
    list(set = set, 
         get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
## Return the inverse if its already set
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
## Get the matrix from object
    data <- x$get()
## Calculate the inverse using matrix multiplication
    inv <- solve(data)
## Set the inverse to the object
    x$setInverse(inv)
## Return the matrix
    inv
}
