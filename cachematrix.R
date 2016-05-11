#Set the matrix
makeMatrix <- function( x = matrix() ) {
M <- NULL
set <- function(y) {
x <<- y
M  <<- NULL
}

#Get the matrix
get <- function() x

#Get the inverse
setmatrixinv <- fuction(inverse)  M <<- inverse
getinverse <- function () M
list(set = set, get = get,
setmatrixinv = setmatrixinv,
getinverse = getinverse)
}

#Skip the computation
cashemean<-function(x,...)    {
M <- x$getinverse()
if(!is.null(M)){
message("getting cashed data")
return(M)
}

#sets the value of the inverse in the cache
matriz <- x$get()
M <- solve(matriz, ...)
x$setmatrixinv(M)
M
}
