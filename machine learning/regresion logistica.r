mtcars

model <- glm(formula = vs ~ wt,
             family = binomial,
             data = mtcars)


x <- seq(min(mtcars$wt),
         max(mtcars$wt),
         0.01)

x


y <- predict(model, list(wt = x),
             type = "response")


print(model)





plot(mtcars$wt, mtcars$vs, pch = 16,
     xlab = "Weight", ylab = "VS")
lines(x, y)

