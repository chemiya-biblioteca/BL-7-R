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

