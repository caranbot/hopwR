##################################################################################
####  Hands-On Programming with R - The Very Basics                           ####
##################################################################################

####--------------------------------------------------------------------------####
####  The R User Interface                                                    ####
####--------------------------------------------------------------------------####

#----------------------#
# Simple Command

1+1                


#----------------------#
# Sequence

100:130            # returns 31 values with a sequence of int


#----------------------#
# Multiline Command

5-
  
1                  # R is wating for you to type the rest (or Esc also a option)


#----------------------#
# Errors

3 % 5              


#----------------------#
# R as calculator

2 * 3

4 - 1

6 / (4 - 1)


#----------------------#
# Shortcuts:

# Run selected lines              Ctrl + Enter
# <-:                             Alt  + -
# Cancel Command:                 Ctrl + c
# Clear Console:                  Ctrl + l
# (Un)comment selected lines      Ctrl + Shift + c


#----------------------#
# Magic with Numbers:

# 1. Choose any number and add 2 to it.
# 2. Multiply the result by 3.
# 3. Subtract 6 from the answer.
# 4. Divide what you get by 3.

10 + 2
## 12

12 * 3
## 36

36 - 6
## 30

30 / 3
## 10


####--------------------------------------------------------------------------####
####  Objects                                                                 ####
####--------------------------------------------------------------------------####

#----------------------#
# Vector (one-dimensional set of numbers)

1:6

#----------------------#
# Create an object in r

a <- 1
a


#----------------------#
# Use defined object

a + 2


#----------------------#
# Define a vector

die <- 1:6
die                # object will appear in environment


#----------------------#
# Naming of objects

# You can name an object in R almost anything you want, but there are 
# a few rules. First, a name cannot start with a number. Second, a name 
# cannot use some special symbols, like ^, !, $, @, +, -, /, or *
# R is case-sensitive

Name <- 1
name <- 0

Name + 1


# Finally, R will overwrite any previous information stored in an object 
# without asking you for permission. So, it is a good idea to not use
# names that are already taken

my_number <- 1
my_number 

my_number <- 999
my_number


#----------------------#
# Check for object names you have already used

ls()

# or examine RStudio's environment pane


#----------------------#
# Manipulating die

die - 1

die / 2

die * die


# R does not follow the rules of matrix multiplication. Instead
# R uses element-wise execution.

# If you give R two vectors of unequal lengths, R will repeat 
# the shorter vector until it is as long as the longer vector,
# and then do the math.

die + 1:2

die + 4:1


#----------------------#
# Traditional matrix multiplication

die %*% die        # inner multiplication
die %o% die        # outer multiplication

t(die) %*% die
die %*% t(die)


####--------------------------------------------------------------------------####
####  Functions                                                               ####
####--------------------------------------------------------------------------####


round(3.1415)

factorial(5)


# The data that you pass into the function is called the function’s argument.
# The argument can be raw data, an R object, or even the results of another R function.
# In this last case, R will work from the innermost function to the outermost.


mean(1:6)

mean(die)

round(mean(die))


#----------------------#
# Roll the die

sample(x = 1:4, size = 2)


sample(x = die, size = 1)


# You may have noticed that I set die and 1 equal to the names of the arguments in sample,
# x and size. Every argument in every R function has a name.
# You will notice that R users do not often use the name of the first argument in a function.
# So you might see the previous code written as:

sample(die, 2)


sample(die, 8)     # check help page

args(sample)
?sample()

sample(x = die, size = 8, replace = TRUE, prob = c(1/6
                                                   ,1/6
                                                   ,1/6
                                                   ,1/6
                                                   ,1/6
                                                   ,1/6)
)


# !!! round pi on 2 digits

round(pi, digits = 2)


# You should write out the names of each argument after the first one or two when
# you call a function with multiple arguments.


sample(replace = TRUE, size = 12, x = die)



# !!! roll the die twice and sum the results.

dice <- sample(die, size = 2, replace = T)

dice

sum(dice)


####--------------------------------------------------------------------------####
####  Writing your own function                                               ####
####--------------------------------------------------------------------------####

# You can retype this code into the console anytime you want to re-roll your dice.
# However, this is an awkward way to work with the code.
# We’re going to write a function named roll that you can use to roll your virtual dice.

roll()


#----------------------#
# the functon constructor

my_function <- function() {}


#----------------------#
# define a function

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)                                             
}

roll()

roll

# The code that you place inside your function is known as the body of the function.
# When you run a function in R, R will execute all of the code in the body and then
# return the result of the last line of code. If the last line of code doesn’t return
# a value, neither will your function, so you want to ensure that your final line of
# code returns a value.


#----------------------#
# some code that would display a result:

dice
1 + 1
sqrt(2)

#----------------------#
# some code that would not display a result:

dice <- sample(die, size = 2, replace = TRUE)
two <- 1 + 1
a <- sqrt(2)


####--------------------------------------------------------------------------####
####  Arguments                                                               ####
####--------------------------------------------------------------------------####

# What if we removed one line of code from our function and changed the name die to roulette?

roll2 <- function() {
  dice <- sample(roulette, size = 1, replace = TRUE)
  sum(dice)
}

roll2()

# We can supply roulette, when calling roll2 if roulette is made into an argument of the function.

roll2 <- function(roulette) {
  dice <- sample(roulette, size = 1, replace = TRUE)
  sum(dice)
}


roll2(roulette = 0:36)

roll2(roulette = 1:6)

# Notice that roll2 will still give an error if you do not supply a value for the
# roulette argument when you call roll2

roll2()

# We can prevent this error by giving the roulette argument a default value

roll2 <- function(roulette = 0:36) {
  dice <- sample(roulette, size = 1, replace = TRUE)
  sum(dice)
}

roll2()



