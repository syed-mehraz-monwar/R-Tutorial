# # # Functions

# # # add_num <- function(a,b)
# # # {
# # #   sum_result <- a+b
# # #   return(sum_result)
# # #   }
# # # sum = add_num(35,34)
# # # print(sum)

# # # Built-in functions
# # # print(sum(4:6))
# # # print(max(4:6))
# # # print(min(4:6))
# # # Mathematical Functions	abs(), sqrt(), round(), exp(), log(), cos(), sin(), tan()
# # # Statistical Functions	mean(), median(), cor(), var()
# # # Data Manipulation Functions	unique(), subset(), aggregate(), order()

# # OOP
# # S3 Class

# # does not have a predefined definition
# # 1. Creating S3 Class
# # a <- list(name="Adam", Roll_No=15)
# # class(a) <- "Student"
# # print(a)

# # 2. Generic Functions
# # print.Student <- function(obj){
# #   cat("name: " ,obj$name, "\n")
# #   cat("Roll No: ", obj$Roll_No, "\n")
# # }
# # print(a)

# # 3. Attributes
# # piece of extra information that is used to handle the objects
# # attributes(a)

# # 4. Inheritance in S3 Class
# # student <- function(n, r){
# #     value <- list(name = n, Roll = r)
# #     attr(value, "class") <- "student"
# #     value
# # }
# # print.student <- function(obj){
# #     cat("Name:", obj$name, "\n")
# #     cat("Roll", obj$Roll_No, "\n")
# # }
# # s <- list(name="Kesha", Roll_No=21, country="India")
# # class(s) <- c("Student", "student")
# # print.Student(s)
# # print.student <- function(obj) {
# #     cat(obj$name, "is from", obj$country, "\n")
# # }
# # print.student(s)

# # S4 Class
# # has a predefined definition
# # contains functions for defining methods and generics

# # 1. Creating S4 class and object 
# # setClass("Student", slots=list(name="character", Roll_No="numeric"))
# # a <- new("Student", name="Adam", Roll_No=20)
# # setMethod("print", "Student", function(x) {
# #     cat("name:", x@name, "\n") 
# #     cat("Roll No:", x@Roll_No, "\n")
# # })
# # print(a)

# # 2. Create S4 objects from the generator function
# # setClass() returns a generator function that 
# # helps in creating objects and it acts as a constructor
# # stud <- setClass("Student", slots=list(name="character",
# #                                Roll_No="numeric"))

# # print(stud)

# # 3. Inheritance in S4 class
# # setClass("student",
# #          slots=list(name="character",
# #                     age="numeric", rno="numeric")
# #          )

# # setMethod("show", "student",
# #           function(obj){
# #               cat(obj@name, "\n")
# #               cat(obj@age, "\n")
# #               cat(obj@rno, "\n")
# #           }
# #           )

# # setClass("InternationalStudent",
# #          slots=list(country="character"),
# #          contains="student"
# #          )

# # s <- new("InternationalStudent", name="Adam",
# #           age=22, rno=15, country="India")
# # show(s)

# # Reference Class
# # improvement over S4 Classes
# # methods are associated with the classes
# # similar to object-oriented classes in other languages
# # library(methods)

# # moviess <- setRefClass("moviess",
# #                       fields = list(
# #                         name = "character",
# #                         leadActor = "character",
# #                         rating = "numeric"
# #                       ))

# # movieList <- new("moviess", name = "Iron Man", 
# # leadActor = "Robert Downey Jr", rating = 7)
# # movieList

# # Objects
# # an instance of a class and can be assigned to a variable
# # Type of Objects: Vector, List, Matrix, Factor, Array,  Data Frame

# # Encapsulation
# # *bundling data (attributes) and the methods.. 
# # that manipulate the data into a single unit (class)
# # *hides the internal state of an object.. 
# # from external interference and unauthorized access

# # 1.Defining and Using a Class with Encapsulation
# # A <- list(name = "Geeksforgeeks", 
# #           state = "UP", sector= 136)
# # class(A) <- "info" 
# # print(A)

# # Polymorphism
# *parametric polymorphism.. 
# which means that methods in R refer to functions, not classes
# *Polymorphism in R can be obtained by the generics
# *functions return different results depending on the..
#  objects being passed to them

#  1. plot()
#  different graph depending upon its input (vector, factor, data frame, etc)

#  2. summary() 
# same as plot

#  3. Creating a Custom Generic Method
#  same function can be used multiple times

#  Abstraction
#  *simplifying complex systems by concealing their internal workings
#  *helps in reducing complexity

#  Abstraction with S3 Classes
#  create_person <- function(name, age) {
#   person_object <- list(name = name, age = age)
#   return(person_object)
#   class(person_object) <- "person"
# }
# print.person <- function(x) {
#   cat("Name:", x$name, "\n")
#   cat("Age:", x$age, "\n")
# }
# person1 <- create_person("John", 30)
# print.person(person1)

# Abstraction with S4 Classes
# setClass("Person", 
#          slots = list(name = "character", age = "numeric"))
# setMethod("show", "Person", function(object) {
#   cat("Name:", object@name, "\n")
#   cat("Age:", object@age, "\n")
# })
# p <- new("Person", name = "Bob", age = 40)
# show(p)

# Abstraction with Reference Classes
# Person <- setRefClass("Person", 
#                       fields = list(name = "character", age = "numeric"),
#                       methods = list(
#                         inc_age = function(x) {
#                           age <<- age + x
#                         },
#                         dec_age = function(x) {
#                           age <<- age - x
#                         }
#                       ))

# p <- Person$new(name = "Charlie", age = 25)

# p$inc_age(5)
# cat("New age:", p$age, "\n")