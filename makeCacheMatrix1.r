makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize the inverse to NULL
  
  # Function to set the value of the matrix
  set <- function(y) {
    x <<- y     # Set the matrix value
    inv <<- NULL # Reset the inverse cache to NULL if the matrix changes
  }
  
  # Function to get the value of the matrix
  get <- function() x
  
  # Function to set the value of the inverse of the matrix
  setinv <- function(inverse) inv <<- inverse
  
  # Function to get the cached inverse
  getinv <- function() inv
  
  # Return a list of the functions
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}