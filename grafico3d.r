install.packages("scatterplot3d")
library(scatterplot3d)
attach(mtcars)

scatterplot3d(mpg, cyl, hp,
              main = "3D Scatterplot")
