DF <- data.frame (
  id = c(1, 2, 3, 4, 5),
  name = c("Peter", "Amy", "Ryan", "Gary", "Michelle"),
  salary = c(623.30, 515.20, 611.00, 729.00, 843.25)  
)
DF

DF <- cbind(DF, department = c("IT", "Computer Science", "HR", "Finance", "Legal"))
DF

ExtractedDF <- DF[-c(2, 4), -c(1, 4)]
ExtractedDF

xbar <- c("Peter", "Gary", "Michelle")
ybar <- c(DF[c(1, 4, 5), 3])

xbar

barplot(ybar, names.arg = xbar)

x1 <- median(c(DF[,3]))
x1

x2 <- max(c(DF[ ,3]))
x2

x3 <- min(c(DF[ ,3]))
x3

y1 <- "Median Salary"
y2 <- "Maximum Salary"
y3 <- "Minimum Salary"

x <- c(x1, x2, x3)
y <- c(y1, y2, y3)
pie(x, label = y, main = "Salary Statistics")

get_color <- function(color) {
  if (color == "red") {
    r <- 1
    g <- 0
    b <- 0
    return (c(r, g, b))
  }
  else if (color == "blue") {
    r <- 0
    g <- 0
    b <- 1
    return (c(r, g, b))
  }
  else if (color == "white") {
    r <- 1
    g <- 1
    b <- 1
    return (c(r, g, b))
  }
  else {
    r <- 0
    g <- 0
    b <- 0
    return (c(r, g, b))
  }
}

rgb <- get_color("white")
rgb

install.packages("TurtleGraphics")
library("TurtleGraphics")

draw_star <- function(size, color) {
  turtle_init()
  turtle_col(color)
  side_size <- size / 0.8507
  turtle_right(180)
  turtle_left(18)
  for (x in 1:5) {
    turtle_forward(side_size)
    turtle_left(72)
    turtle_forward(side_size)
    turtle_right(144)
  }
  turtle_reset()
  return()
}

draw_star(10, "red")
