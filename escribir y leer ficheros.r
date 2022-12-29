write.table(x = iris, 
            file = "GFG.txt",
            sep = "\t",
            row.names = TRUE,
            col.names = NA)
new.iris <- read.table(file = "GFG.txt")

print(new.iris)


write.csv(iris, file = "my_data.csv")
leido<-read.csv(file = "my_data.csv",sep=",")
leido


install.packages("xlsx")


library(xlsx)

x <- c(1, 3, 4, 5, 10)
y <- c(2, 4, 6, 8, 10)
z <- c(10, 12, 14, 16, 18)

?cbind
data <- cbind(x, y, z)


write.xlsx(data, file = "CSVWrite.xlsx", row.names = FALSE)


print(data)

data1 <- read.xlsx("CSVWrite.xlsx", header=T,sheetIndex = 1)
data1



install.packages("pacman")
library(datasets)
pacman::p_load(pacman, rio) 
rio_xlsx <- import("C:/Users/chema/Desktop/formacionPracticar/rstudio/CourseFiles-20221120T201346Z-001/CourseFiles/ImportingData_Datasets/mbb.xlsx")
head(rio_xlsx)
View(rio_xlsx)
