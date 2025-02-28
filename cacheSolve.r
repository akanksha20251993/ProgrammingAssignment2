cacheSolve <- function(x, ...) {
  # Try to get the cached inverse
  inv <- x$getinv()
  
  # If the inverse is already cached, return it
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  # Otherwise, compute the inverse
  data <- x$get()  # Get the matrix
  inv <- solve(data, ...)  # Calculate the inverse of the matrix
  x$setinv(inv)  # Cache the inverse
  
  inv  # Return the computed inverse
}