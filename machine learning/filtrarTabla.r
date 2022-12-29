library(dplyr)
Data <- read.csv("GenderClassification.csv",
                 stringsAsFactors = TRUE)

Data %>% 
  filter(Gender == "M")
