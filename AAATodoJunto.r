?mtcars
head(mtcars)

head(airquality)

#barplot-------------------------------


barplot(airquality$Ozone,
        main = 'Ozone Concenteration in air',
        xlab = 'ozone levels')


cylinders <- table(mtcars$cyl) 
barplot(cylinders)  



feeds = table(chickwts$feed)
barplot(feeds[order(feeds)], horiz=TRUE,
        xlab="Number of chicks", las=1, col="yellow") 



#histograma--------------------------------
hist(airquality$Temp, main ="La Guardia Airport' Maximum Temperature(Daily)",
     xlab ="Temperature(Fahrenheit)",
    col ="yellow",
     freq = TRUE)

hist(iris$Petal.Length[iris$Species == "virginica" & 
                         iris$Petal.Length < 5.5],
     main = "Petal Length: Short Virginica")


hist(lynx,
     breaks = 14,          
     freq   = FALSE,       
     col    = "thistle1",  
     main   = paste("Histogram of Annual Canadian Lynx",
                    "Trappings, 1821-1934"),
     xlab   = "Number of Lynx Trapped")


curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4", 
      lwd = 2,           
      add = TRUE)        



hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue")


h<-hist(mtcars$disp, main ="por peso",
        xlab ="peso",
        col ="yellow",
        freq = TRUE,
        breaks=5)
text(h$mids,h$counts,labels=h$counts, adj=c(0.5, -0.5))


#ordenar--------------------
ordered_df <- mtcars[order(mtcars$hp), ]
ordered_df


#boxplot--------------------------------
boxplot(airquality$Wind, main = "Average wind speed at La Guardia Airport",
        xlab = "Miles per hour", ylab = "Wind",
        col = "orange", border = "brown",
        horizontal = F, notch = F)


boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        main = "Mileage Data")




#plot---------------------------------
plot(airquality$Solar.R, airquality$Temp,
     main ="Scatterplot Example",
     xlab ="Ozone Concentration in parts per billion",
     ylab =" Month of observation ", pch = 19)

plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",  # Hex code for datalab.cc red
     pch = 19,         # Use solid circles for points
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")


#grafico de lineas-------------------------
v <- c(17, 25, 38, 13, 41)
t <- c(22, 19, 36, 19, 23)
m <- c(25, 14, 16, 34, 29)


plot(v, type = "o", col = "red",
     xlab = "Month", ylab = "Article Written ",
     main = "Article Written chart")

lines(t, type = "o", col = "blue")
lines(m, type = "o", col = "green")


arbol1<-subset(Orange,Tree==1)
arbol1

plot(arbol1$age, arbol1$circumference, type = "l", lwd = 2, main = "lty = 1")



#grafico triple----------------------------------
colors = c("green", "orange", "brown")
months <- c("Mar", "Apr", "May", "Jun", "Jul")
regions <- c("East", "West", "North")


Values <- matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11), 
                 nrow = 3, ncol = 5, byrow = TRUE)


barplot(Values, main = "Total Revenue", names.arg = months, 
        xlab = "Month", ylab = "Revenue", 
        col = colors, beside = TRUE)


legend("topleft", regions, cex = 0.7, fill = colors)


#grafico 3d---------------------------
install.packages("scatterplot3d")
library(scatterplot3d)
attach(mtcars)

scatterplot3d(mpg, cyl, hp,
              main = "3D Scatterplot")


#grafico circular------------------------


geeks<- c(23, 56, 20, 63)
labels <- c("Mumbai", "Pune", "Chennai", "Bangalore")




piepercent<- round(100 * geeks / sum(geeks), 1)


pie(geeks, labels = piepercent,
    main = "City pie chart", col = rainbow(length(geeks)))
legend("topright", c("Mumbai", "Pune", "Chennai", "Bangalore"),
       cex = 0.5, fill = rainbow(length(geeks)))


#matriz--------------------


A = matrix(
  
  
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  
  nrow = 3,  
  
  ncol = 3,        
  
  byrow = TRUE         
)


rownames(A) = c("a", "b", "c")


colnames(A) = c("c", "d", "e")

cat("The 3x3 matrix:\n")
print(A)
typeof(A)

print(dim(A))

cat("Number of rows:\n")
print(nrow(A))

cat("Number of columns:\n")
print(ncol(A))

print(A[, 1:2])
print(A[2, 3])
A = A[, -2]
print(A)



#array--------------------
vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vec2 <- c(10, 11, 12)
row_names <- c("row1", "row2")
col_names <- c("col1", "col2", "col3")
mat_names <- c("Mat1", "Mat2")
arr = array(c(vec1, vec2), dim = c(2, 3, 2), 
            dimnames = list(row_names, col_names, mat_names))

print ("2nd row 3rd column matrix 1 element")
print (arr[2, "col3", 1])

print ("2nd row 1st column element of matrix 2")
print(arr["row2", "col1", "Mat2"])


#conversion dataframe-------------------------------
vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vec2<-as.data.frame(vec1)
vec2

str(vec2)


vec1 <- c(vec1, 6)
print ("Array after 1st modification ")
print (vec1)



#factor----------------------
fac = factor(c("Male", "Female", "Male",
               "Male", "Female", "Male", "Female"))

print(fac)


produccion=c(120,100,132,112,95,164,172,183,155,176,110,115,122,108,120)
maquina=c(27,27,27,27,27,32,32,32,32,32,55,55,55,55,55)
dia=c(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5)
cbind(maquina,dia,produccion)

maquina=factor(maquina)
maquina

#hierechical clustering------------------------
cars <- mtcars[, c(1:4, 6:7, 9:11)] 
head(cars)

hc <- cars   %>%  
  dist   %>%  
  hclust      

plot(hc) 

rect.hclust(hc, k = 4, border = "green4")


#----------------------------

install.packages("dplyr")


library(dplyr)


head(mtcars)



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



#funciones sobre string---------------------
library(stringr)

str_length("hello")

substr("Learn Code Tech", 1, 1)

str <- "Learn Code"

len <- nchar(str)
print(len)

print (substring(str, len, len))






#print y asignar------------------------------
print("HelloWorld")
asignar="hola"
asignar1<-"hola"
cat("tengo: ",asignar1)

x1 = 255 
sprintf("%d is integer", x1)



#vector----------------
vec1 <- c(0, 2,4,5,6,7)
vec1[2]<-3

vec1 <- vec1[c(3, 2, 1)]
cat('combine() function', vec1)

A <- sort(vec1)


#operacion entre %%
val <- 0.1
list1 <- c(TRUE, 0.1,"apple")
print (val %in% list1)



#if y else------------------
x <- 5


if(x > 10)
{ 
  print("is greater than 10")
}else
{ 
  print( "is less than 10")
}



#bucle while-------------------
val = 1


while (val <= 5 ) 
{ 
  
  print(val) 
  val = val + 1
} 



# bucle repeat-----------------------
val = 1


repeat 
{ 
  
  print(val) 
  val = val + 1
  
  
  if(val > 5) 
  { 
    break
  } 
} 



# bucle for-------------------------
for (val in 1:5) 
{ 
  
  print(val) 
}



#funciones---------------------
evenOdd = function(x){ 
  if(x %% 2 == 0) 
    return("even") 
  else
    return("odd") 
} 

print(evenOdd(4)) 
print(evenOdd(3)) 



#funcion con lista-----------------
Rectangle = function(length, width){
  area = length * width
  perimeter = 2 * (length + width)
  
  result = list("Area" = area, "Perimeter" = perimeter)
  return(result)
}

resultList = Rectangle(2, 3)
print(resultList["Area"])
print(resultList["Perimeter"])


#funcion entre %%------------------------------
'%Greater%' <- function(a, b)
{
  if(a > b) print(a)
  else if(b > a) print(b)
  else print("equal")
}
5 %Greater% 7
2300 %Greater% 67



#next---------------------------
val <- 6:11


for (i in val) 
{ 
  if (i == 8) 
  { 
    
    next
  } 
  print(i) 
} 



#break------------------------
a<-1    
while (a < 10) 
{     
  print(a)     
  if(a == 5)     
    break    
  a = a + 1    
}   



#tipos------------------------
x = 5.6

print(class(x))
print(typeof(x))
print(is.integer(x))
x = as.integer(5)
print(as.numeric(TRUE))



#leer entrada---------------------
var = readline(prompt="dime numero");
var = as.integer(var);
print(var)


d = scan(what = double())
print(d)



#escribir ficheros--------------------
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


#medidas--------------------------

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


#ifelse--------------------------
mtcars

datosAnadido<-cbind(mtcars,"pais"="pendiente")
datosAnadido$pais <- ifelse(mtcars$cyl  == 6,"eeuu" , ifelse(mtcars$cyl  == 5,"europe" ,"asia" ) )


datosAnadido


#dist normal--------------------------
x = seq(-15, 15, by=0.1)
x
y = dnorm(x, mean(x), sd(x))
y

#subconjunto---------------------------
iris
new_csv <- subset(iris, Sepal.Length<5.5 & Sepal.Width>3.2)
new_csv


i.setosa <- iris[iris$Species == "setosa", ]
summary(i.setosa$Petal.Length)

#json----------------------------
install.packages('rjson')
library(rjson)


result <- fromJSON(file = "json.txt")


print(result)

datos<-as.data.frame(result)
datos


#mysql----------------------------------

install.packages("RMySQL")


library("RMySQL")


mysqlconn = dbConnect(MySQL(), user = 'root', password = 'password',
                      dbname = 'rstudio', host = 'localhost')


dbListTables(mysqlconn)

dbSendQuery(mysqlconn, 'DROP TABLE coche2')
res = dbSendQuery(mysqlconn, "SELECT * FROM coche")
df = fetch(res, n = 3)
print(df)


dbSendQuery(mysqlconn, "insert into coche values('merce',23,34)")






#summary y describe-------------------------
install.packages("psych")
library(psych)

summary(iris)
describe(iris)


#ggplot---------------------------------------
library(ggplot2)
ggplot(data = mtcars, 
       aes(x = hp, y = mpg, col = disp)) + geom_point()

ggplot(data = mtcars, 
       aes(x = hp, y = mpg, size = disp)) + geom_point()

ggplot(data = mtcars, 
       aes(x = hp, y = mpg, col = factor(cyl), 
           shape = factor(am))) +
  geom_point()








p <- ggplot(data = mtcars, 
            aes(x = hp, y = mpg, 
                shape = factor(cyl))) + geom_point()


p + facet_grid(am ~ .)


p + facet_grid(. ~ cyl)


ggplot(data = mtcars, aes(x = hp, y = mpg)) + 
  geom_point() + 
  stat_smooth(method = lm, col = "red")


ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point() + facet_grid(am ~ cyl) + 
  theme_gray()



gfg <-data.frame(
  x=c('A', 'B', 'C', 'D', 'E', 'F'),
  y=c(4, 6, 2, 9, 7, 3))


ggplot(gfg, aes(x, y, fill=x)) + geom_bar(stat="identity")



#filtro-----------------------------
library(dplyr)
library(forcats)

print(starwars %>% filter(species == "Droid"))
print(head(starwars %>% filter(!is.na(species))
           %>% count(species, sort = TRUE)))

#apply----------------

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

#condicion or y and------------------------
a <- 67
b <- 76
c <- 99


if(a > b && b > c)
{
  print("condition a > b > c is TRUE")
} else if(a < b && b > c)
{
  print("condition a < b > c is TRUE")
} else if(a < b && b < c)
{
  print("condition a < b < c  is TRUE")
}




#switch------------------------------------
val1 = 6  
val2 = 7
val3 = "s"  
result = switch(  
  val3,  
  "a"= cat("Addition =", val1 + val2),  
  "d"= cat("Subtraction =", val1 - val2),  
  "r"= cat("Division = ", val1 / val2),  
  "s"= cat("Multiplication =", val1 * val2),
  "m"= cat("Modulus =", val1 %% val2),
  "p"= cat("Power =", val1 ^ val2)
)  


#lista y conversiones---------------


empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList)

print(empList$Names)
print(empList[[2]][2])
empList[[2]][5] = "Kamala"


empAge = c(34, 23, 18, 45)
empAgeList = list(
  "Age" = empAge
)
empList = c(empList, empAgeList)
cat("After concatenation of the new list\n")
print(empList)

print(empList[-3])


#dataframe-------------------------------------
age <- c(40, 49, 48, 40, 67, 52, 53) 
salary <- c(103200, 106200, 150200,
            10606, 10390, 14070, 10220)
gender <- c("male", "male", "transgender",
            "female", "male", "female", "transgender")
employee<- data.frame(age, salary, gender) 
print(employee) 

nuevo<-employee[-2]
nuevo

#filtro na----------------------------
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



#grafico de densidad y guardar grafico---------------------
library(lattice)

png("DensityPlotLatticeGFG.png")

densityplot(~hp, main ="Density plot of HP", xlab ="HP")

dev.off()


data(ToothGrowth)

png("HistogramLatticeGFG.png")

histogram(~len, data = ToothGrowth,
          main = "Histogram of Length")

dev.off()


#pagina web--------------------
library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 10, min = 1, max = 1000),
  plotOutput("hist")
)

server <- function(input, output)
{
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
}

shinyApp(ui = ui, server = server)



#reemplazar vacios-------------

library(tidyr)
df <- data.frame(S.No = c(1:10),
                 Name = c('John', 'Smith', 
                          'Peter', 'Luke',
                          'King', rep(NA, 5)))
df                                     

df %>% replace_na(list(Name = 'Henry')) 




#data table--------------------------
library(data.table)
x <- data.table(A = letters[1:5], X = 1:5, Y = 6:10)


print(x)


z<-as.matrix(x)


print(z)


#clase---------------------

a <- list(name="Adam", Roll_No=15)

class(a) <- "Student"

a


print.Student <- function(obj){
  cat("name: " ,obj$name, "\n")
  cat("Roll No: ", obj$Roll_No, "\n")
}

print(a)


attr(a, "age")<-c(18)
attributes(a)


setClass("Student", slots=list(name="character",
                               Roll_No="numeric"))

a <- new("Student", name="Adam", Roll_No=20)

a



setMethod("show", "Student",
          function(obj){
            cat(obj@name, "\n")
            cat(obj@Roll_No, "\n")
            
          }
)


setClass("InternationalStudent",
         slots=list(country="character"),
         contains="Student"
)


s <- new("InternationalStudent", name="Adam",
         Roll_No=15, country="India")
show(s)



movieList <- list(name = "Iron man", leadActor = "Robert Downey Jr")

class(movieList) <- "movie"

movieList




print.movie <- function(obj)
{
  cat("The name of the movie is", obj$name,".\n")
  cat(obj$leadActor, "is the lead actor.\n")
}



#trycatch--------------------------------------
tryCatch(               
  
  
  expr = {                     
    1 + 1
    print("Everything was fine.")
  },
  
  error = function(e){         
    print("There was an error message.")
  },
  
  warning = function(w){      
    print("There was a warning message.")
  },
  
  finally = {            
    print("finally Executed")
  }
)


#crear particion----------------------------
install.packages("caret")
library(caret)
Data <- read.csv("GenderClassification.csv",
                 stringsAsFactors = TRUE)
Data
set.seed(10)


Data$Favorite.Color <- as.numeric(Data$Favorite.Color)
Data$Favorite.Music.Genre <- as.numeric(Data$Favorite.Music.Genre)
Data$Favorite.Beverage <- as.numeric(Data$Favorite.Beverage)
Data$Favorite.Soft.Drink <- as.numeric(Data$Favorite.Soft.Drink)

Data
TrainingSize <- createDataPartition(Data$Gender, 
                                    p = 0.8, 
                                    list = FALSE)
TrainingSize
TrainingData <- Data[TrainingSize,]
TrainingData
TestingData <- Data[-TrainingSize,]
TestingData



model <- train(Gender ~ ., data = TrainingData, 
               method = "svmPoly",
               na.action = na.omit,
               preProcess = c("scale", "center"),
               trControl = trainControl(method = "none"),
               tuneGrid = data.frame(degree = 1, 
                                     scale = 1, 
                                     C = 1)
)

print(model)


ggplot(Data, aes(Favorite.Color)) +
  geom_bar(fill = "#0073C2FF")


#randomforest------------------------------


install.packages("randomForest")
library(randomForest)

?randomForest
model <- randomForest(formula = Gender ~ ., 
                      data = Data)
print(model)

#-------------------

install.packages("caTools")	 
install.packages("randomForest") 


library(caTools)
library(randomForest)


split <- sample.split(iris, SplitRatio = 0.7)
split

train <- subset(iris, split == "TRUE")
test <- subset(iris, split == "FALSE")



set.seed(120) 
classifier_RF = randomForest(x = train[-5],
                             y = train$Species,
                             ntree = 500)

classifier_RF


y_pred = predict(classifier_RF, newdata = test[-5])


confusion_mtx = table(test[, 5], y_pred)
confusion_mtx







#nnet--------------------------
library(nnet)


model <- nnet(formula = Gender ~ ., 
              data = Data, 
              size = 30)
print(model)

#e1071-------------------------
library(e1071)


model <- svm(formula = Gender ~ ., 
             data = Data)
print(model)


#rpart------------------------
library(rpart)


partition <- rpart(formula = Gender~., 
                   data = Data)
plot(partition)


#seleccionar-------------------------
library(dplyr)


Data %>% 
  filter(Gender == "M")


#regresion lineal----------------------------

dataset = read.csv('Salary_Data.csv')


install.packages('caTools')
library(caTools)
dataset

split = sample.split(dataset$Salary,
                     SplitRatio = 0.7)
split


trainingset = subset(dataset, split == TRUE)
trainingset
testset = subset(dataset, split == FALSE)
testset


lm.r = lm(formula = Salary ~ YearsExperience,
          data = trainingset)
coef(lm.r)


ypred = predict(lm.r, newdata = testset)

data<-data.frame(testset,ypred)
data


install.packages("ggplot2")
library(ggplot2)


ggplot() + geom_point(aes(x = trainingset$YearsExperience,
                          y = trainingset$Salary),
                      colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(lm.r, newdata = trainingset)),
            colour = 'blue') +
  
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary')



ggplot() + geom_point(aes(x = testset$YearsExperience,
                          y = testset$Salary),
                      colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(lm.r, newdata = trainingset)),
            colour = 'blue') +
  
  ggtitle('Salary vs Experience (Test set)') +
  xlab('Years of experience') +
  ylab('Salary')


#kmeans--------------------------

install.packages("ClusterR")
install.packages("cluster")


library(ClusterR)
library(cluster)


data(iris)


str(iris)


iris_1 <- iris[, -5]
iris_1


set.seed(240) 
kmeans.re <- kmeans(iris_1, centers = 3,
                    nstart = 20)
kmeans.re


kmeans.re$cluster


cm <- table(iris$Species, kmeans.re$cluster)
cm


plot(iris_1[c("Sepal.Length", "Sepal.Width")])
plot(iris_1[c("Sepal.Length", "Sepal.Width")],
     col = kmeans.re$cluster)
plot(iris_1[c("Sepal.Length", "Sepal.Width")],
     col = kmeans.re$cluster,
     main = "K-means with 3 clusters")


kmeans.re$centers
kmeans.re$centers[, c("Sepal.Length",
                      "Sepal.Width")]


points(kmeans.re$centers[, c("Sepal.Length",
                             "Sepal.Width")],
       col = 1:3, pch = 8, cex = 3)


y_kmeans <- kmeans.re$cluster
clusplot(iris_1[, c("Sepal.Length", "Sepal.Width")],
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Cluster iris"),
         xlab = 'Sepal.Length',
         ylab = 'Sepal.Width')



#--------------------


install.packages("factoextra")
library(factoextra)


df <- mtcars


df <- na.omit(df)


df <- scale(df)




km <- kmeans(df, centers = 4, nstart = 25)


fviz_cluster(km, data = df)




km <- kmeans(df, centers = 5, nstart = 25)


fviz_cluster(km, data = df)



#regresion lineal------------------------------

x <- c(153, 169, 140, 186, 128,
       136, 178, 163, 152, 133)


y <- c(64, 81, 58, 91, 47, 57,
       75, 72, 62, 49)


model <- lm(y~x)


print(model)


df <- data.frame(x = 182)
res <-  predict(model, df)
cat("\nPredicted value of a person
               with height = 182")
print(res)





plot(x, y, main = "Height vs Weight
                 Regression model")
abline(lm(y~x))



#regresion multiple-----------------------------

airquality
input <- airquality[1:50,
                    c("Ozone", "Wind", "Temp")]


model <- lm(Ozone~Wind + Temp,
            data = input)


cat("Regression model:\n")
print(model)


plot(model)




#regresion logisitca-----------------------------
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



#decision tree-------------------------
install.packages("party")
library(party)

readingSkills

input.data <- readingSkills[c(1:105), ]





output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score,
  data = input.data)


plot(output.tree)



#----------------------------



library(datasets)
library(caTools)
library(party)
library(dplyr)
library(magrittr)

data("readingSkills")
head(readingSkills)


sample_data = sample.split(readingSkills, SplitRatio = 0.8)
train_data <- subset(readingSkills, sample_data == TRUE)
test_data <- subset(readingSkills, sample_data == FALSE)

model<- ctree(nativeSpeaker ~ ., train_data)
plot(model)



predict_model<-predict(model, test_data)


m_at <- table(test_data$nativeSpeaker, predict_model)
m_at

ac_Test <- sum(diag(m_at)) / sum(m_at)
print(paste('Accuracy for test is found to be', ac_Test))



#naive bayes-----------------------------
install.packages("e1071")
install.packages("caTools")
install.packages("caret")


library(e1071)
library(caTools)
library(caret)


split <- sample.split(iris, SplitRatio = 0.7)
train_cl <- subset(iris, split == "TRUE")
test_cl <- subset(iris, split == "FALSE")

train_cl

train_scale <- scale(train_cl[, 1:4])
train_scale
test_scale <- scale(test_cl[, 1:4])


set.seed(120)  
classifier_cl <- naiveBayes(Species ~ ., data = train_cl)
classifier_cl


y_pred <- predict(classifier_cl, newdata = test_cl)


cm <- table(test_cl$Species, y_pred)
cm


confusionMatrix(cm)



#kvecinos-----------------------

install.packages("e1071")
install.packages("caTools")
install.packages("class")


library(e1071)
library(caTools)
library(class)
split <- sample.split(iris, SplitRatio = 0.7)
train_cl <- subset(iris, split == "TRUE")
test_cl <- subset(iris, split == "FALSE")


train_scale <- scale(train_cl[, 1:4])
test_scale <- scale(test_cl[, 1:4])


classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$Species,
                      k = 1)
classifier_knn


cm <- table(test_cl$Species, classifier_knn)
cm


misClassError <- mean(classifier_knn != test_cl$Species)
print(paste('Accuracy =', 1-misClassError))




classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$Species,
                      k = 5)
misClassError <- mean(classifier_knn != test_cl$Species)
print(paste('Accuracy =', 1-misClassError))








