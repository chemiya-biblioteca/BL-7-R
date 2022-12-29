dataset = read.csv('Salary_Data.csv')


install.packages('caTools')
library(caTools)
dataset

split = sample.split(dataset$Salary,
                     SplitRatio = 0.7)
split


trainingset = subset(dataset, split == TRUE)
trainingset
testset = subset(dataset, split == FALSE)
testset


lm.r = lm(formula = Salary ~ YearsExperience,
          data = trainingset)
coef(lm.r)


ypred = predict(lm.r, newdata = testset)

data<-data.frame(testset,ypred)
data


install.packages("ggplot2")
library(ggplot2)


ggplot() + geom_point(aes(x = trainingset$YearsExperience,
                          y = trainingset$Salary),
                      colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(lm.r, newdata = trainingset)),
            colour = 'blue') +
  
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary')



ggplot() + geom_point(aes(x = testset$YearsExperience,
                          y = testset$Salary),
                      colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(lm.r, newdata = trainingset)),
            colour = 'blue') +
  
  ggtitle('Salary vs Experience (Test set)') +
  xlab('Years of experience') +
  ylab('Salary')


#-------------------------------------

x <- c(153, 169, 140, 186, 128,
       136, 178, 163, 152, 133)


y <- c(64, 81, 58, 91, 47, 57,
       75, 72, 62, 49)


model <- lm(y~x)


print(model)


df <- data.frame(x = 182)
res <-  predict(model, df)
cat("\nPredicted value of a person
               with height = 182")
print(res)





plot(x, y, main = "Height vs Weight
                 Regression model")
abline(lm(y~x))

