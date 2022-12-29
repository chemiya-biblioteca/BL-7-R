colors = c("green", "orange", "brown")
months <- c("Mar", "Apr", "May", "Jun", "Jul")
regions <- c("East", "West", "North")


Values <- matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11), 
                 nrow = 3, ncol = 5, byrow = TRUE)


barplot(Values, main = "Total Revenue", names.arg = months, 
        xlab = "Month", ylab = "Revenue", 
        col = colors, beside = TRUE)


legend("topleft", regions, cex = 0.7, fill = colors)
