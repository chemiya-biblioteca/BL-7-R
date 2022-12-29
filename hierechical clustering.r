install.packages("dplyr") 
library(dplyr)

cars <- mtcars[, c(1:4, 6:7, 9:11)] 
head(cars)

hc <- cars   %>%  
  dist   %>%  
  hclust      

plot(hc) 

rect.hclust(hc, k = 4, border = "green4")



#--------------------------

distance_mat <- dist(mtcars, method = 'euclidean')
distance_mat


set.seed(240) 
Hierar_cl <- hclust(distance_mat, method = "average")
Hierar_cl


plot(Hierar_cl)


abline(h = 110, col = "green")


fit <- cutree(Hierar_cl, k = 3 )
fit

table(fit)
rect.hclust(Hierar_cl, k = 3, border = "green")
