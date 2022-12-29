airquality
input <- airquality[1:50,
                    c("Ozone", "Wind", "Temp")]


model <- lm(Ozone~Wind + Temp,
            data = input)


cat("Regression model:\n")
print(model)


plot(model)
