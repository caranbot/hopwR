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





