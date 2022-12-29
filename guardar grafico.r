library(lattice)
hp<-mtcars$hp
png("DensityPlotLattice.png")

densityplot(~hp, main ="Density plot of HP", xlab ="HP")

dev.off()


data(ToothGrowth)
len<-ToothGrowth$len

png("HistogramLattice.png")

histogram(~len, data = ToothGrowth,
          main = "Histogram of Length")

dev.off()
