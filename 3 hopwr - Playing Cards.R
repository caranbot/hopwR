##################################################################################
####  Hands-On Programming with R - Playing Cards                             ####
##################################################################################

####--------------------------------------------------------------------------####
####  R Objects                                                               ####
####--------------------------------------------------------------------------####

####--------------------------------------------------------------------------####
####  Atomic Vectors                                                          ####
####--------------------------------------------------------------------------####

die <- c(1, 2, 3, 4, 5, 6)
die

#----------------------#
# Test if object is a vector

is.vector(die)

five <- 5
is.vector(5)


#----------------------#
# return length of atomic vector

length(five)
length(die)


int <- 1L          # integer vector
text <- "ace"      # character vector



int <- c(1L, 5L)
text <- c("ace", "hearts")


# You may wonder why R uses multiple types of vectors. Vector
# types help R behave as you would expect. For example, R will
# do math with atomic vectors that contain numbers, but not
# with atomic vectors that contain character strings:

sum(int)
sum("text")


####--------------------------------------------------------------------------####
####  Doubles                                                                 ####
####--------------------------------------------------------------------------####

# A double vector stores regular numbers. The numbers can be positive
# or negative, large or small, and have digits to the right of the
# decimal place or not.

typeof(die)

# numeric is identical to double (and real)


####--------------------------------------------------------------------------####
####  Integers                                                                ####
####--------------------------------------------------------------------------####

int <- c(-1L, 2L, 4L)
int
typeof(int)

# Note that R won’t save a number as an integer unless you include the L.
# Integer numbers without the L will be saved as doubles


# Why would you save your data as an integer instead of a double? Sometimes a
# difference in precision can have surprising effects. Your computer allocates
# 64 bits of memory to store each double in an R program.

# As a result, each double is accurate to about 16 significant digits.

sqrt(2)^2 - 2


####--------------------------------------------------------------------------####
####  Characters                                                              ####
####--------------------------------------------------------------------------####

text <- c("Hello",  "World")
text

typeof(text)

typeof("Hello")


# Expect an error whenever you forget your quotation marks;
# R will start looking for an object that probably does not exist.


####--------------------------------------------------------------------------####
####  Logicals                                                                ####
####--------------------------------------------------------------------------####

3 > 4

# Any time you type TRUE or FALSE in capital letters (without quotation marks),
# R will treat your input as logical data. R also assumes that T and F are shorthand
# for TRUE and FALSE, unless they are defined elsewhere (e.g. T <- 500).
# Since the meaning of T and F can change, its best to stick with TRUE and FALSE:

logic <- c(TRUE, FALSE, TRUE)
logic

typeof(logic)

typeof(F)


####--------------------------------------------------------------------------####
####  Complex and Raw                                                         ####
####--------------------------------------------------------------------------####

comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
typeof(comp)


raw(3)
typeof(raw(3))

?raw


####--------------------------------------------------------------------------####
####  Exercise                                                                ####
####--------------------------------------------------------------------------####

# Create an atomic vector that stores just the face names of the cards
# in a royal flush, for example, the ace of spades, king of spades,
# queen of spades, jack of spades, and ten of spades. The face name of
# the ace of spades would be “ace,” and “spades” is the suit.


hand <- c("ace", "king", "queen", "jack", "ten")
hand
typeof(hand)


####--------------------------------------------------------------------------####
####  Attributes                                                              ####
####--------------------------------------------------------------------------####

# An attribute is a piece of information that you can attach to an atomic
# vector (or any R object). The attribute won’t affect any of the values in
# the object, and it will not appear when you display your object. You can
# think of an attribute as “metadata”; it is just a convenient place to put
# information associated with an object. R will normally ignore this metadata,
# but some R functions will check for specific attributes. These functions
# may use the attributes to do special things with the data.

attributes(die)

# The most common attributes to give an atomic vector are names, dimensions (dim),
# and classes.






