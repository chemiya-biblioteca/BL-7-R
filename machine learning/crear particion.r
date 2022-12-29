install.packages("caret")
library(caret)
Data <- read.csv("GenderClassification.csv",
                 stringsAsFactors = TRUE)
Data
set.seed(10)


Data$Favorite.Color <- as.numeric(Data$Favorite.Color)
Data$Favorite.Music.Genre <- as.numeric(Data$Favorite.Music.Genre)
Data$Favorite.Beverage <- as.numeric(Data$Favorite.Beverage)
Data$Favorite.Soft.Drink <- as.numeric(Data$Favorite.Soft.Drink)

Data
TrainingSize <- createDataPartition(Data$Gender, 
                                    p = 0.8, 
                                    list = FALSE)
TrainingSize
TrainingData <- Data[TrainingSize,]
TrainingData
TestingData <- Data[-TrainingSize,]
TestingData



model <- train(Gender ~ ., data = TrainingData, 
               method = "svmPoly",
               na.action = na.omit,
               preProcess = c("scale", "center"),
               trControl = trainControl(method = "none"),
               tuneGrid = data.frame(degree = 1, 
                                     scale = 1, 
                                     C = 1)
)

print(model)


ggplot(Data, aes(Favorite.Color)) +
  geom_bar(fill = "#0073C2FF")
