## Put comments here that give an overall description of what your
## functions do

##Description of makeCacheMatrix
# set the value of the matrix
# get the value of the matrix
# set the value of inverse of the matrix
# get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	{
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


##Description of cacheSolve Function

# The following function returns the inverse of the matrix. It first checks checks the cache
# to check id the result is already stored, if so then it shows the same value without any coputation
# else sets the value in the cache via setinverse function.
# This function assumes that the matrix is always invertible.

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
if(!is.null(inv)) {
message("getting cached data.")
return(inv)
}
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
inv
}
