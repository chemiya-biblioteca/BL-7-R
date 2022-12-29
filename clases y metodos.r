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

