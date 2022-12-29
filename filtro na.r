install.packages("dplyr")
library(dplyr)
d <- data.frame(name=c("Abhi", "Bhavesh",
                       "Chaman", "Dimri"),
                age=c(7, 5, 9, 16),
                ht=c(46, NA, NA, 69),
                school=c("yes", "yes", "no", "no"))
d

d %>% filter(!is.na(ht))

d.name<- arrange(d, age)
print(d.name)

summarise(d, mean = mean(age))

quitarNA<-airquality[!is.na(airquality$Ozone),]
quitarNA
