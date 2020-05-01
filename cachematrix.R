## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix that caches it's inverse
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	getInverse <- function() inv
	setInverse <- function(inverse) inv <<- inverse 
	get <- function() x
	set <- function(matrix){
		x <<- matrix()
		inv <<- NULL	
	}
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	if(is.null(x$getInverse())){
		x$setInverse(solve(x$get()))
	}
	x$getInverse()
}