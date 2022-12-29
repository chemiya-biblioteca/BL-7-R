Rectangle = function(length, width){
  area = length * width
  perimeter = 2 * (length + width)
  
  result = list("Area" = area, "Perimeter" = perimeter)
  return(result)
}

resultList = Rectangle(2, 3)
print(resultList["Area"])
print(resultList["Perimeter"])
