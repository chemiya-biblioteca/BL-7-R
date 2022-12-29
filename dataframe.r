age <- c(40, 49, 48, 40, 67, 52, 53) 
salary <- c(103200, 106200, 150200,
            10606, 10390, 14070, 10220)
gender <- c("male", "male", "transgender",
            "female", "male", "female", "transgender")
employee<- data.frame(age, salary, gender) 
print(employee) 

nuevo<-employee[-2]
nuevo
