mtcars

datosAnadido<-cbind(mtcars,"pais"="pendiente")
datosAnadido$pais <- ifelse(mtcars$cyl  == 6,"eeuu" , ifelse(mtcars$cyl  == 5,"europe" ,"asia" ) )


datosAnadido
