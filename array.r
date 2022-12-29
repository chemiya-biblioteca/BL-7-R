vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vec2 <- c(10, 11, 12)
row_names <- c("row1", "row2")
col_names <- c("col1", "col2", "col3")
mat_names <- c("Mat1", "Mat2")
arr = array(c(vec1, vec2), dim = c(2, 3, 2), 
            dimnames = list(row_names, col_names, mat_names))

print ("2nd row 3rd column matrix 1 element")
print (arr[2, "col3", 1])

print ("2nd row 1st column element of matrix 2")
print(arr["row2", "col1", "Mat2"])
