#This function 'makeCacheMatrix' creates a special "matrix" object that can cache its inverse

#1. Set the value of the matrix
#2. Get the value of the matrix
#3. Set the value of the matrix
#4. Get the value of the matrix

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