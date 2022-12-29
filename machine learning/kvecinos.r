install.packages("e1071")
install.packages("caTools")
install.packages("class")


library(e1071)
library(caTools)
library(class)
split <- sample.split(iris, SplitRatio = 0.7)
train_cl <- subset(iris, split == "TRUE")
test_cl <- subset(iris, split == "FALSE")


train_scale <- scale(train_cl[, 1:4])
test_scale <- scale(test_cl[, 1:4])


classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$Species,
                      k = 1)
classifier_knn


cm <- table(test_cl$Species, classifier_knn)
cm


misClassError <- mean(classifier_knn != test_cl$Species)
print(paste('Accuracy =', 1-misClassError))




classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$Species,
                      k = 5)
misClassError <- mean(classifier_knn != test_cl$Species)
print(paste('Accuracy =', 1-misClassError))

