## Put comments here that give an overall description of what your
## functions do: they consequetively 1) set the matrix, 2) allow to get the matrix, 3) set the inverse matrix and 3) get its inverse. 
#This is then imputed to cache Solve below.

## Write a short comment describing this function: this function creates a matrix, inverses it and stores it.
makeCacheMatrix <- function(x = matrix()) {
a <-NULL
set <- function(y) {
x <<- y
a <<- NULL
}
get <- function() x
setinv <- function(inverse) a <- inverse
getinv <- function() a
list(set = set, get = get,setinv = setinv,getinv = getinv)}


## Write a short comment describing this function: it cashes the inverse of the matrix that has been defined above.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
a = x$getinv()
if (!is.null(a)){
return(a)
}
calc.data = x$get()
a = solve(calc.data, ...)
x$setinv(a)
return(a)
}
