barplot(airquality$Ozone,
        main = 'Ozone Concenteration in air',
        xlab = 'ozone levels')


cylinders <- table(mtcars$cyl) 
barplot(cylinders)  



feeds = table(chickwts$feed)
barplot(feeds[order(feeds)], horiz=TRUE,
        xlab="Number of chicks", las=1, col="yellow") 
