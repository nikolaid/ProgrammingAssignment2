## Put comments here that give an overall description of what your
## functions do: they consequetively set the matrix, get the matrix, set the inverse and get the inverse of it. 
#This is then imputed to cache Solve

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
a = x$getinv()
if (!is.null(a)){
return(a)
}
b = x$get()
a = solve(a, ...)
x$setinv(inv)
return(inv)
}
