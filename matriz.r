A = matrix(
  
  
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  
  nrow = 3,  
  
  ncol = 3,        
  
  byrow = TRUE         
)


rownames(A) = c("a", "b", "c")


colnames(A) = c("c", "d", "e")

cat("The 3x3 matrix:\n")
print(A)
typeof(A)

print(dim(A))

cat("Number of rows:\n")
print(nrow(A))

cat("Number of columns:\n")
print(ncol(A))

print(A[, 1:2])
print(A[2, 3])
A = A[, -2]
print(A)

