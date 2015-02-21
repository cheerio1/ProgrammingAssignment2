#This function creates the matrix inverse for the matrix created with makeCacheMatrix.
#It checks first to see if the inverse has already been calculated. 
#If inverse has already been calculated this function retrieves it from the cache.

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