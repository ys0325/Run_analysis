## Put comments here that give an overall description of what your
## functions do

## 


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  ##This function creates a list with the following 4 functions:
  ##set: set the value of the matrix
  ##get. get the value of the matrix
  ##setInverse: set the value of inverse of the matrix
  ##getInverse:  get the value of inverse of the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inv<-x$getInverse()
if(!is.null(inv)){message("getting cashed data")
  return(inv)## Return a matrix that is the inverse of 'x'
}
data<-x$get()
inv<-solve(data)
x$setInverse(inv)
inv
}
