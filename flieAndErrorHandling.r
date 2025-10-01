# # Creating a File
# # file.create("file_name")
# # file.create("GFG.txt")

# # Writing into a File
# # 1. writeLines(c("Line 1", "Line 2"), "output.txt")
# # 2. write.csv(data, "output.csv", row.names = FALSE)
# # 3. write.table(x = iris[1:10, ], file = "GFG.txt")
# # str = "World"
# # 4. cat("Hello, ", str, file = "catExample.txt")
# # 5.sink("SinkExample.txt")
# # x <- c(1, 3, 4, 5, 10)
# # print(mean(x))
# # print(class(x))
# # print(median(x))
# # sink()

# # Reading Files in R
# # 1. data <- read.csv("data.csv")
# # print(data)
# # lines <- readLines("file.txt")
# # 2. print(lines)
# # 3. new.iris <- read.table(file = "GFG.txt")
# # print(new.iris)
# # 4.data <- read.xlsx("ExcelExample.xlsx", sheet= 1)
# # print(data)

# # Renaming a File
# # file.rename("GFG.txt", "newGFG.txt")

# # Check Existence of a File
# # file.exists("GFG.txt")

# #  Copying a File
# #  file.copy("newGFG.txt", "E:/")

# #  Create a Directory
# #  dir.create("GFG")

# # Working with Directories in R
# # getwd() -> returns the current working directory
# # setwd("C:/RExamples") -> change the working directory
# # list.files() -> List All Files in a Directory

# #ERROR HANDLING
# 1.try(): it helps us to continue with the 
# execution of the program even when an error occurs.
# 2.tryCatch(): it helps to handle the conditions 
# and control what happens based on the conditions.
# 3.withCallingHandlers(): it is an alternative to tryCatch() 
# that takes care of the local handlers.

# tryCatch(                
#   expr = {                      
#     1 + 1
#     print("Everything was fine.")
#   },
#   error = function(e){          
#     print("There was an error message.")
#   },
 
#   warning = function(w){       
#     print("There was a warning message.")
#   },
 
#   finally = {             
#     print("finally Executed")
#   }
# )

# check <- function(expression){

# withCallingHandlers(expression,
        
#         warning = function(w){
#         message("warning:\n", w)
#         },
#         error = function(e){
#         message("error:\n", e)
#         },
#         finally = {
#         message("Completed")
#         })
# }

# check({10/2})
# check({10/0})
# check({10/'noe'})

# Use tryCatch() when you want to catch and exit on errors.

# Use withCallingHandlers() when you want to intercept and continue, 
# especially for warnings or messages.