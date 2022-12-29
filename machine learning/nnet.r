library(nnet)

Data <- read.csv("GenderClassification.csv",
                 stringsAsFactors = TRUE)

model <- nnet(formula = Gender ~ ., 
              data = Data, 
              size = 30)
print(model)
