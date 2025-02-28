# Create a matrix to test the functions
my_matrix <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)

# Create a special matrix object
cached_matrix <- makeCacheMatrix(my_matrix)

# Get the inverse (will be calculated)
cacheSolve(cached_matrix)

# Get the inverse again (will be cached)
cacheSolve(cached_matrix)