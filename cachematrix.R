##Functions to cache a matrix

## Below function sets the value of matrix,gets the value of matrix,sets inverse of matrix and gets inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Returns a cached matrix,if not present its sets the inversion of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         i <- x$getInverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        matrix <- x$get()
        i <- solve(matrix, ...)
        x$setInverse(i)
        i
}
