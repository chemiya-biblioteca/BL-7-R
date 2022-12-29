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

