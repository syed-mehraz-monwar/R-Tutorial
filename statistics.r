# Measures of Central Tendency
# x <- c(2, 4, 6, 8, 10)

# 1. MEAN (arithmetic average the sum of all values divided by the count of values.)
# mean(x)

# 2. MEADIAN (middle value of the data set)
# median(x)

# 3. MODE (value that appears most frequently)

# 3.1. Custom function
# get_mode <- function(v) {
#   uniqv <- unique(v)
#   uniqv[which.max(tabulate(match(v, uniqv)))]
# }
# x <- c(1, 2, 2, 3, 3, 3, 4)
# get_mode(x)

# 3.2. Modeest Package
# install.packages("modeest")
# library(modeest)

# x <- c(1, 2, 2, 3, 3, 3, 4)
# mfv(x) #Most Frequent Value

# Measures of Dispersion
# list = c(2, 4, 4, 4, 5, 5, 7, 9)

# 1. Average (also known as the mean)
# print(mean(list))

# 2. Standard Deviation (a measure of the extent to which data varies from the mean)
# print(sd(list))

# 3. Variance (how far each number in the set is from the mean)
# print(var(list))

# Summary Statistics
# data(mtcars)
# cat("Summary statistics for mpg:\n")
# summary(mtcars$mpg)
# Minimum Mean Quantiles Median Maximum 

# Using e1071 Package
# install.packages("e1071")
# library(e1071)

# skewness: Measures asymmetry in the distribution.

# data <- c(2, 3, 5, 6, 8, 9, 12, 15, 18, 21)
# skewness_value <- skewness(data)
# print(skewness_value)

# 1. Positive skewness
# tail extends towards higher values
# mean > median
# x <- c(40, 41, 42, 43, 50)
# hist(x)

# 2.Negative Skewness
# tail extends towards lower values.
# mean < median
# x <- c(10, 11, 21, 22, 23, 25)
# hist(x)

# 3. Zero Skewness
# symmetrical distribution
# data is balanced
# both mean and median are equal
# set.seed(123)
# x <- rnorm(50, 10, 10)
# hist(x)

# kurtosis: Measures the peakedness of the distribution.
# data <- c(2, 3, 4, 4, 4, 5, 6, 7, 8, 9, 10)
# kurt_val <- kurtosis(data)
# cat("The kurtosis of the dataset is:", kurt_val, "\n")

# IQR: Returns the interquartile range (Q3 - Q1).
# print("IQR of mpg:")
# IQR(mtcars$mpg)