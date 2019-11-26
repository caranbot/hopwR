##################################################################################
####  Hands-On Programming with R - Packages and Help Pages                   ####
##################################################################################

####--------------------------------------------------------------------------####
####  Packages                                                                ####
####--------------------------------------------------------------------------####


# Each R package is hosted at http://cran.r-project.org, the same website that
# hosts R. However, you don’t need to visit the website to download an R package

#----------------------#
# Install packages

# install.packages("ggplot2")


#----------------------#
# Load packages

ggplot2::qplot

library("ggplot2")


#----------------------#
# Create you first plot

# create vector with function c(), c stands for concatenate

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)

y <- x^3

# qplot stands for quickplot

qplot(x,y)
qplot(y,x)

# qplot will make a histogram whenever you give it only one vector to plot.

x1 <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)


# Let's try another histogram
 
x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)

# 
x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)


#----------------------#
# Check accuracy of your dice with a histogram

# If you roll your dice many times and plot the results with qplot,
# the histogram will show you how often each sum appeared. 


# This is where replicate comes in.
# replicate provides an easy way to repeat an R command many times

replicate(3, 1+1)
replicate(10, roll())


# Simulate with an appropriate number of repetitions

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

# The behavior of our dice suggests that they are fair. Seven occurs
# more often than any other number, and frequencies diminish in proportion
# to the number of die combinations that create each number.


# To put it another way, the probability of rolling any single number on a 
# fair die is 1/6. I’d like you to change the probability to 1/8 for each
# number below six, and then increase the probability of rolling a six to 3/8:


#----------------------#
# Help Pages

?sample


#----------------------#
# Rewrite roll() function with weighted probs

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE, 
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}


#----------------------#
# Check Histogram

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)


