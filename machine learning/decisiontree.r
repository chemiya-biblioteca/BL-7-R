install.packages("party")
library(party)

readingSkills

input.data <- readingSkills[c(1:105), ]





output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score,
  data = input.data)


plot(output.tree)



#----------------------------



library(datasets)
library(caTools)
library(party)
library(dplyr)
library(magrittr)

data("readingSkills")
head(readingSkills)


sample_data = sample.split(readingSkills, SplitRatio = 0.8)
train_data <- subset(readingSkills, sample_data == TRUE)
test_data <- subset(readingSkills, sample_data == FALSE)

model<- ctree(nativeSpeaker ~ ., train_data)
plot(model)



predict_model<-predict(model, test_data)


m_at <- table(test_data$nativeSpeaker, predict_model)
m_at

ac_Test <- sum(diag(m_at)) / sum(m_at)
print(paste('Accuracy for test is found to be', ac_Test))
