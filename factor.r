fac = factor(c("Male", "Female", "Male",
               "Male", "Female", "Male", "Female"))

print(fac)


produccion=c(120,100,132,112,95,164,172,183,155,176,110,115,122,108,120)
maquina=c(27,27,27,27,27,32,32,32,32,32,55,55,55,55,55)
dia=c(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5)
cbind(maquina,dia,produccion)

maquina=factor(maquina)
maquina
