m <- matrix(C <- (1:10),
            nrow = 5,
            ncol = 6)
m
a_m <- apply(m, 2, sum)
a_m


normalize <-function(x) { 
  (x -min(x))/(max(x)-min(x))  
}
normalizado1<-lapply(iris[2], normalize)
normalizado1
