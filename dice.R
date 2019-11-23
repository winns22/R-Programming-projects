roll <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  print(dice)
}

roll2 <- function(bones = 1:6){
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll()
roll2()

#qplot
library("ggplot2")

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y <- x^3

qplot(x,y)

#If you give qplot two vectors of equal lengths, qplot will draw a scatterplot

x<-c(1,2,2,2,3,3)

qplot(x, binwidth = 1)

#qplot will make a histogram whenever you give it only one vector to plot.

#replicate

replicate(10, roll2())

rolls <- replicate(10000, roll2())
qplot(rolls, binwidth = 1)

#weighted dice
roll3 <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE, prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}
rolls3 <- replicate(10000, roll3())
qplot(rolls3, binwidth = 1)

#vector attributes (names)
die <- 1:6
names(die) <- c("one","two","three","four","five","six")
die

#Dim
#You can transform an atomic vector into an n-dimensional 
#array by giving it a dimen‐ sions attribute with dim.

dim(die) <- c(2,3)
die

#Matrices
#Matrices store values in a two-dimensional array, 
#just like a matrix from linear algebra. 

m <- matrix(die, nrow = 3)

#matrix will fill up the matrix column by column by default, 
#but you can fill the matrix row by row if you include the 
#argument byrow = TRUE:

#or
n <- matrix(die, ncol = 2, byrow = T)
