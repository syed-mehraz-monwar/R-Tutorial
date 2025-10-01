# # Conditional Statements

# # 1. if statement
# # if (a > b) {
# #   print("condition a > b is TRUE") 
# # }

# # 2. if-else statement
# # if (a > b) {
# #   print("condition a > b is TRUE")
# # } else {
# #   print("condition a > b is FALSE")
# # }

# # 3. if-else-if ladder
# # if (a > b && b > c) {
# #   print("condition a > b > c is TRUE")
# # } else if (a < b && b > c) {
# #   print("condition a < b > c is TRUE")
# # } else if (a < b && b < c) {
# #   print("condition a < b < c is TRUE")
# # }

# # 4. nested if-else statement
# # if (a == 10) {
# #   if (b == 10) {
# #     print("a:10 b:10")
# #   } else {
# #     print("a:10 b:11")
# #   }
# # } else {
# #   if (a == 11) {
# #     print("a:11 b:10")
# #   } else {
# #     print("a:11 b:11")
# #   }
# # }

# # 5. switch statement

# # result <- switch(3,
# #   "First option",
# #   "Second option",
# #   "Third option"
# # )
# # print(result)  # Output: "Third option"

# # operation <- "multiply"
# # x <- 5
# # y <- 3

# # result <- switch(operation,
# #   add = x + y,
# #   subtract = x - y,
# #   multiply = x * y,
# #   divide = x / y,
# #   "Invalid operation"
# # )
# # print(result)  # Output: 15


# # grade <- "B"

# # feedback <- switch(grade,
# #   A = { "Excellent!" },
# #   B = { paste("Good job,", Sys.Date()) },
# #   C = { "Needs improvement." },
# #   "Unknown grade"
# # )
# # print(feedback)

# #LOOPS
# #For Loop
# for (val in 1: 5)
# {
#     print(val)
# }

# week <- c('Sunday',
#            'Monday',
#            'Tuesday',
#            'Wednesday',
#            'Thursday',
#            'Friday',
#            'Saturday')

# for (day in week)
# {
#     print(day)
# }

# #While Loop
# val = 1
# while (val <= 5)
# {
#     print(val)
#     val = val + 1
# }

# #Repeat
# val = 1

# repeat
# {
#     print(val)
#     val = val + 1
    
#     if(val > 5)
#     {
#         break
#     }
# }