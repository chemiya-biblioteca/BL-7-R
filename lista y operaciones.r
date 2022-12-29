empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList)

print(empList$Names)
print(empList[[2]][2])
empList[[2]][5] = "Kamala"


empAge = c(34, 23, 18, 45)
empAgeList = list(
  "Age" = empAge
)
empList = c(empList, empAgeList)
cat("After concatenation of the new list\n")
print(empList)

print(empList[-3])
