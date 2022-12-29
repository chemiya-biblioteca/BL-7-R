install.packages('rjson')
library(rjson)


result <- fromJSON(file = "json.txt")


print(result)

datos<-as.data.frame(result)
datos