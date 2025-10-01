# The mtcars dataset in R is a built-in data frame that
# comes with the base installation of R

# 1. Bar Chart

# Syntax: barplot(H, xlab, ylab, main, names.arg, col)
# H: vector or matrix containing numeric values which are used in bar chart.
# xlab: This parameter is the label for x axis in bar chart.
# ylab: This parameter is the label for y axis in bar chart.
# main: This parameter is the title of the bar chart.
# names.arg: vector of names appearing under each bar in bar chart.
# col: This parameter is used to give colors to the bars in the graph.

# 1.1 Creating
# A <- c(17, 2, 8, 13, 1, 22)
# B <- c("Jan", "feb", "Mar", "Apr", "May", "Jun")

# barplot(A, names.arg = B, xlab ="Month",
#         ylab ="Articles", col ="green",
#         main ="GeeksforGeeks-Article chart")
# To create a horizontal bar chart, add the horiz = TRUE 

# 1.2 Adding Data Labels on Top of Each Bar
# A <- c(17, 2, 8, 13, 1, 22)
# B <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")

# barplot(A, names.arg = B, xlab = "Month",
#         ylab = "Articles", col = "steelblue",
#         main = "GeeksforGeeks - Article Chart",
#         cex.main = 1.5, cex.lab = 1.2, cex.axis = 1.1)
# text(
#   x = barplot(A, names.arg = B, col = "steelblue", ylim = c(0, max(A) * 1.2)),
#   y = A + 1, labels = A, pos = 3, cex = 1.2, col = "black"
# )

# 1.3 Grouped Bar Chart
# colors = c("green", "orange", "brown")
# months <- c("Mar", "Apr", "May", "Jun", "Jul")
# regions <- c("East", "West", "North")

# Values <- matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11),
#                 nrow = 3, ncol = 5, byrow = TRUE)

# barplot(Values, main = "Total Revenue", names.arg = months,
#                         xlab = "Month", ylab = "Revenue",
#                         col = colors, beside = TRUE)

# legend("topleft", regions, cex = 0.7, fill = colors)

# 1.4  Stacked Bar Chart
# beside = FALSE (default behavior)

# 2. Line graphs
# Syntax: plot(v, type, col, xlab, ylab, main)
# v: A vector containing the numeric values to be plotted.
# type: Specifies the type of graph ("p" only points, "l" only lines, "o" both points and lines).
# xlab: Label for the x-axis.
# ylab: Label for the y-axis.
# main: Title of the chart.
# col: Specifies the color for the points and lines.

# 2.1 Creating a Simple Line Graph
# v <- c(17, 25, 38, 13, 41)
# plot(v, type = "o")

# 2.2 Customizing Line Graphs in R
# v <- c(17, 25, 38, 13, 41)
# plot(v, type = "o", col = "green", 
# xlab = "Month", ylab = "Articles Written", main = "Articles Written Chart")

# 2.3 Plotting Multiple Lines in a Line Graph
# we add more lines using the lines() function.

# v <- c(17, 25, 38, 13, 41)
# t <- c(22, 19, 36, 19, 23)
# m <- c(25, 14, 16, 34, 29)
# plot(v, type = "o", col = "red", 
# xlab = "Month", ylab = "Articles Written", main = "Articles Written Chart")
# lines(t, type = "o", col = "blue")
# lines(m, type = "o", col = "green")

# 3. Histograms
# Syntax:hist(v, main, xlab, xlim, ylim, breaks, col, border)

# v: A vector containing numerical values for the histogram.
# main: The title of the chart.
# col: The color of the bars.
# xlab: The label for the x-axis.
# border: The border color of each bar.
# xlim: The range of values for the x-axis.
# ylim: The range of values for the y-axis.
# breaks: The width of each bar.

# 3.1 Creating a simple Histogram
# v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39)

# hist(v, xlab = "No.of Articles ",
#      col = "green", border = "black")

# 1 Range of X and Y values
# v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39)
# hist(v, xlab = "No.of Articles", col = "green",
#     border = "black", xlim = c(0, 50),
#     ylim = c(0, 5), breaks = 5)

# 3.2 Using histogram return values for labels using text()
# v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39, 120, 40, 70, 90)

# m<-hist(v, xlab = "Weight", ylab ="Frequency",
#         col = "darkmagenta", border = "pink", 
#         breaks = 5)

# text(m$mids, m$counts, labels = m$counts, 
#      adj = c(0.5, -0.5))

# 3.3 Histogram using non-uniform width
# v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39, 120, 40, 70, 90)
    
# hist(v, xlab = "Weight", ylab ="Frequency",
#      xlim = c(50, 100),
#     col = "darkmagenta", border = "pink",
#     breaks = c(5, 55, 60, 70, 75,
#                80, 100, 140))

# 4. Pie Charts
# Syntaxpie(x, labels, radius, main, col, clockwise)

# x: A vector of numeric values for the pie chart.
# labels: Descriptions for the pie chart slices.
# radius: Defines the radius of the pie chart (value between -1 and +1).
# main: Title of the pie chart.
# clockwise: Logical value determining if slices are drawn clockwise or anticlockwise.
# col: Colors for the pie chart slices.

# 4.1 Creating a simple pie chart
# geeks<- c(23, 56, 20, 63)
# labels <- c("Mumbai", "Pune", "Chennai", "Bangalore")

# pie(geeks, labels)

# 1 Pie chart including the title and colors
# geeks<- c(23, 56, 20, 63)
# labels <- c("Mumbai", "Pune", "Chennai", "Bangalore")

# pie(geeks, labels, main = "City pie chart",
#             col = rainbow(length(geeks)))

# 2 Slice Percentage & Chart Legend
#  legend("topright", c("Mumbai", "Pune", "Chennai", "Bangalore"),
#                     cex = 0.5, fill = rainbow(length(geeks)))

# 4.2 Add pie chart color palettes
# install.packages("RColorBrewer")
# library(RColorBrewer)

# geeks <- c(23, 56, 20, 63)
# labelss <- c("Mumbai", "Pune", "Chennai", "Bangalore")

# labels<- brewer.pal(length(geeks), "Set2") 

# pie(geeks, labels = labelss)

# 1 Modify the line type of the borders of the plot
# pie(geeks, labels = labelss, col = color, lty = 2)

# 2 Add shading lines with the density argument.
# pie(geeks, labels = labelss,col = color, density = 50, angle = 45)

# 4.3 3D Pie Chart
# install.packages("plotrix")
# library(plotrix)

# geeks <- c(23, 56, 20, 63)
# labels <- c("Mumbai", "Pune", "Chennai", "Bangalore")

# piepercent<- round(100 * geeks / sum(geeks), 1)

# pie3D(geeks, labels = piepercent,
#       main = "City pie chart", col = rainbow(length(geeks)))
#       legend("topright", c("Mumbai", "Pune", "Chennai", "Bangalore"),
#                     cex = 0.5, fill = rainbow(length(geeks)))


# 5. Scatter plot
# Syntax:plot(x, y, main, xlab, ylab, xlim, ylim, axes)

# x: Sets the horizontal coordinates.
# y: Sets the vertical coordinates.
# xlab: Label for the horizontal axis.
# ylab: Label for the vertical axis.
# main: Title of the chart.
# xlim: Defines the x-axis range.
# ylim: Defines the y-axis range.
# axes: Indicates whether both axes should be drawn.

# 5.1 Creating a Scatterplot Graph
# input <- mtcars[, c('wt', 'mpg')]
# plot(x = input$wt, y = input$mpg,
#     xlab = "Weight",
#     ylab = "Milage",
#     xlim = c(1.5, 4),
#     ylim = c(10, 25),        
#     main = "Weight vs Milage"
# )

# 5.2 Scatterplot Matrices
# pairs(~wt + mpg + disp + cyl, data = mtcars,
#        main = "Scatterplot Matrix")

# 5.3  Scatterplot with fitted values
# install.packages("ggplot2")
# library(ggplot2)
    
# ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +
#         geom_point(aes(color = factor(gear))) +
#         stat_smooth(method = "lm",
#         col = "#C42126", se = FALSE, size = 1)

# 1 Adding title with dynamic name
# library(ggplot2)
    
# new_graph<-ggplot(mtcars, aes(x = log(mpg),
#                               y = log(drat))) +
#                     geom_point(aes(color = factor(gear))) +
#                     geom_smooth(method = "lm",
#                                 col = "#C42126",
#                     se = FALSE, size = 1)

# new_graph + labs(
#         title = "Relation between Mile per hours and drat",
#         subtitle = "Relationship break down by gear class",
#         caption = "Authors own computation")

# 5.4 3D Scatterplots
# install.packages("plotly")
# library(plotly)

# data(mtcars)

# fig <- plot_ly(data = mtcars, 
#                x = ~mpg, 
#                y = ~wt, 
#                z = ~qsec, 
#                type = 'scatter3d', 
#                mode = 'markers', 
#                marker = list(color = 'blue', size = 5))

# fig <- fig %>% layout(title = '3D Scatter Plot of mtcars',
#                       scene = list(
#                         xaxis = list(title = 'Miles Per Gallon (mpg)'),
#                         yaxis = list(title = 'Weight (wt)'),
#                         zaxis = list(title = '1/4 Mile Time (qsec)')
#                       ))

# fig


# 6. Heatmap
# Syntax:heatmap(data)

# data: It represent matrix data, such as values of rows and columns

# 6.1 Create a Heatmap
# set.seed(110)

# data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)

# colnames(data) <- paste0("col", 1:10)
# rownames(data) <- paste0("row", 1:10)

# heatmap(data)

# 6.2 Create heatmap in R using colorRampPalette
# set.seed(110)

# data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)
 
# colnames(data) <- paste0("col", 1:10)
# rownames(data) <- paste0("row", 1:10)

# my_colors <- colorRampPalette(c("cyan", "darkgreen"))

# heatmap(data, col = my_colors(100))

# 6.3 Adding Title and Axis Labels to the Heatmap
# set.seed(110)

# data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)
   
# colnames(data) <- paste0("col", 1:10)
# rownames(data) <- paste0("row", 1:10)

# my_colors <- colorRampPalette(c("cyan", "darkgreen"))

# heatmap(data, col = my_colors(100), main = "Customized Heatmap", 
#         xlab = "Columns", ylab = "Rows")

# 6.4 Margins Around the Heatmap Plot
# set.seed(110)

# data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)

# colnames(data) <- paste0("col", 1:10)
# rownames(data) <- paste0("row", 1:10)

# my_colors <- colorRampPalette(c("cyan", "darkgreen"))

# heatmap(data, col = my_colors(100), main = "Customized Heatmap", 
#         xlab = "Columns", ylab = "Rows", margins = c(5, 10))

# 6.5 Heatmap in R without Dendrogram
# set.seed(110)

# data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)

# colnames(data) <- paste0("col", 1:10)
# rownames(data) <- paste0("row", 1:10)

# my_colors <- colorRampPalette(c("cyan", "darkgreen"))

# heatmap(data, col = my_colors(100), main = "Customized Heatmap", 
#         xlab = "Columns", ylab = "Rows", margins = c(5, 10), Colv = NA, Rowv = NA)