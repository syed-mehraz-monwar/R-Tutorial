# Hello World
print("Hello World")

# Variables
# letters(a-z,A-Z), numbers(0-9), dot(.), underscore(_)
# only dot and letter can be starting point of names

# Types of Assignment
var_1 = "simple"
var_2 <- "Leftward" #Most used
"Rightward" -> var_3

# Operators
# 1 Arithmetic
# 1.1 Addition
a <- c(1, 0.1) 
b <- c(2.33, 4)
print(a + b)
#Here c means combined, 
#a function that combines two data types into one in a vector

# 1.2 Substraction
a <- 6
b <- 8.4
print(a - b)

# 1.3 Multiplication
b <- c(4, 4)
c <- c(5, 5)
print(b * c)

# 1.4 Division
a <- 10
b <- 5
print(a / b)

# 1.5 Power
a <- 4
b <- 5
print(a^b)

# 1.6 Modulo
a <- c(2, 22)
b <- c(2, 4)
print(a %% b)

# 2 Logical
# 2.1 Element Wise AND
a <- c(TRUE, 0.1)
b <- c(0, 4 + 3i)
print(a & b)
# 2.2 Element Wise OR
a <- c(TRUE, 0.1)
b <- c(0, 4 + 3i)
print(a | b)
# 2.3 NOT
a <- c(0, FALSE)
print(!a)
# 2.4 AND
a <- c(TRUE, 0.1)
b <- c(0, 4 + 3i)
print(a[1] && b[1])
# 2.5 OR
a <- c(TRUE, 0.1)
b <- c(0, 4 + 3i)
print(a[1] || b[1])

# 3 Relational
# 3.1 Less Than
a <- c(TRUE, 0.1, "apple")
b <- c(0, 0.1, "bat")
print(a < b)

# 3.2 Less Than equal to
a <- c(TRUE, 0.1, "apple")
b <- c(TRUE, 0.1, "bat")

c <- as.character(a)
d <- as.character(b)
print(c <= d)

# 3.3 Greater Than
a <- c(TRUE, 0.1, "apple")
b <- c(TRUE, 0.1, "bat")
print(a > b)

# 3.4 Greater Than equal to
a <- c(TRUE, 0.1, "apple")
b <- c(TRUE, 0.1, "bat")
print(a >= b)

# 3.5 Not equal to
a <- c(TRUE, 0.1, "apple")
b <- c(0, 0.1, "bat")
print(a != b)

# 4 Assignment
# 4.1 Left Assignment (= or <-)
vec1 <- c("ab", TRUE)
print(vec1)

# 4.2 Right Assignment (->)
c("ab", TRUE) ->> vec1
print(vec1)

# 5 Miscellaneous Operators
# 5.1 %in% Operator (Checks if an element belongs to
# a list and returns a boolean value TRUE 
#if the value is present  else FALSE.)
val <- 0.1
a <- c(TRUE, 0.1, "apple")
print(val %in% a)
# 5.2 %*% Operator (This operator is used to 
#multiply a matrix with its transpose.)
mat = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
         print (mat)
         print( t(mat))
         pro = mat %*% t(mat)
         print(pro)


#Data Types
# Numeric -> Set of all real numbers
# Integer -> Set of all integers, Z
# Logical -> TRUE and FALSE
# Complex -> Set of complex numbers
# Character ->"a", "b", "c", ..., "@", "#", "$", ...., "1", "2", ...etc
# raw -> as.raw() (To save and work with data at the byte level)

#SOME IMPORTANT METHODS/FUNCTIONS
# class(object) -> To find the data type 
# print(class(3))
# is.data_type(object) -> verify the data type 
# print(is.integer(3))
# as.data_type(object) -> Convert the Data Type 
# print(as.logical(10.5))
# ls() -> to know all the present variables in the workspace
# rm() -> delete an unwanted variable


#KEYWORDS
# if, else, while, for, function, break, TRUE / FALSE
# repeat, next, Inf, NaN, NULL, NA

# Input
# name <- readline(prompt = "Enter your name: ")
# age <- as.numeric(readline(prompt = "Enter your age: "))

#Output
# name 
# score 
# print(paste("Hello", name, "your score is", score))
# cat("Hello,", "world!\n")
# sprintf("Hello %s, your score is %.2f", name, score)
# %s for string
# %d for integer
# %.2f for float with 2 decimal places
# library(glue)
# glue("Hello {name}, your score is {round(score, 2)}")



