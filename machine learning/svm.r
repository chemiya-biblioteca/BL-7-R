library(e1071)
Data <- read.csv("GenderClassification.csv",
                 stringsAsFactors = TRUE)

model <- svm(formula = Gender ~ ., 
             data = Data)
print(model)
