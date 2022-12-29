iris
new_csv <- subset(iris, Sepal.Length<5.5 & Sepal.Width>3.2)
new_csv


i.setosa <- iris[iris$Species == "setosa", ]
summary(i.setosa$Petal.Length)
