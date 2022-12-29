library(rpart)
Data <- read.csv("GenderClassification.csv",
                 stringsAsFactors = TRUE)

partition <- rpart(formula = Gender~., 
                   data = Data)
plot(partition)
