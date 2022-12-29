valor<-mean(mtcars$mpg)
valor

min_pro <- min(mtcars$mpg)
print (min_pro)

list = c(2, 40, 2, 502, 177, 7, 9)


print(mean(list))
print(var(list))
print(sd(list))



std = sd(mtcars$mpg)
print(std)

quartiles = quantile(mtcars$mpg)
print(quartiles)

IQR = IQR(mtcars$mpg)
print(IQR)


x <- c(1, 3, 5, 10)

y <- c(2, 4, 6, 20)


print(cov(x, y))
print(cor(x, y))

library(moments)


x <- c(40, 41, 42, 43, 50)
print(skewness(x))


x <- c(rep(61, each = 10), rep(64, each = 18),
       rep(65, each = 23), rep(67, each = 32), rep(70, each = 27),
       rep(73, each = 17))



print(kurtosis(x))

hist(x)
