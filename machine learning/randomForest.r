install.packages("randomForest")
library(randomForest)

Data <- read.csv("GenderClassification.csv",
                 stringsAsFactors = TRUE)

?randomForest
model <- randomForest(formula = Gender ~ ., 
                      data = Data)
print(model)



#---------------------------

install.packages("caTools")	 
install.packages("randomForest") 


library(caTools)
library(randomForest)


split <- sample.split(iris, SplitRatio = 0.7)
split

train <- subset(iris, split == "TRUE")
test <- subset(iris, split == "FALSE")



set.seed(120) 
classifier_RF = randomForest(x = train[-5],
                             y = train$Species,
                             ntree = 500)

classifier_RF


y_pred = predict(classifier_RF, newdata = test[-5])


confusion_mtx = table(test[, 5], y_pred)
confusion_mtx



