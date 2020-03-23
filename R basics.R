#Basic arithmetic operations
# Addition
3 + 7
# Substraction
7 - 3
# Multiplication
3 * 7
# Divison
7/3
# Exponentiation
2^3
# Modulo: returns the remainder of the division of 8/3
8 %% 3


#Basic arithmetic functions
# 1 Logarithms and Exponentials:
log2(x) # logarithms base 2 of x
log10(x) # logaritms base 10 of x
exp(x) # Exponential of x

#Trigonometric functions:
cos(x) # Cosine of x
sin(x) # Sine of x
tan(x) #Tangent of x
acos(x) # arc-cosine of x
asin(x) # arc-sine of x
atan(x) #arc-tangent of x

#Other mathematical functions
abs(x) # absolute value of x
sqrt(x) # square root of x

#Assigning values to variables
# Price of a lemon = 2 euros
lemon_price <- 2
# or use this
lemon_price = 2

print(lemon_price)

# Multiply lemon price by 5
5 * lemon_price

# Change the value
lemon_price <- 5
# Print again
lemon_price

# Rectangle height
height <- 10
# rectangle width
width <- 5
# compute rectangle area
area <- height*width
print(area)

#The function ls() can be used to see the list of objects we have created:
ls()

#To remove a variable, use the function rm():
  # Remove height and width variable
  rm(height, width)
# Display the remaining variables
ls()

#Basic data types
#Basic data types are numeric, character and logical.
# Numeric object: How old are you?
my_age <- 28
# Character  object: What's your name?
my_name <- "Nicolas"
# logical object: Are you a data scientist?
# (yes/no) <=> (TRUE/FALSE)
is_datascientist <- TRUE

#Note that, character vector can be created using double (") or single (') quotes. If your text contains quotes, you should escape them using"\" as follow.
'My friend\'s name is "Jerome"'

#It's possible to use the function class() to see what type a variable is:
class(my_age)
class(my_name)

#You can also use the functions is.numeric(), is.character(), is.logical() to check whether a variable is numeric, character or logical, respectively. For instance:
is.numeric(my_age)
is.numeric(my_name)

#Type conversion
#If you want to change the type of a variable to another one, use the as.* functions, including: as.numeric(), as.character(), as.logical(), etc.

my_age

# Convert my_age to a character variable
as.character(my_age)

# Vector
#A vector is a combination of multiple values (numeric, character or logical) in the same object. In this case, you can have numeric vectors, character vectors or logical vectors.

#Create a vector
#A vector is created using the function c() (for concatenate), as follow:

# Store your friends'age in a numeric vector
friend_ages <- c(27, 25, 29, 26) # Create
friend_ages # Print

# Store your friend names in a character vector
my_friends <- c("Nicolas", "Thierry", "Bernard", "Jerome")
my_friends 

# Store your friends marital status in a logical vector
# Are they married? (yes/no <=> TRUE/FALSE)
are_married <- c(TRUE, FALSE, TRUE, TRUE)
are_married

# Vector without element names
friend_ages

# Vector with element names
names(friend_ages) <- c("Nicolas", "Thierry", "Bernard", "Jerome")
friend_ages

# You can also create a named vector as follow
friend_ages <- c(Nicolas = 27, Thierry = 25, 
                 Bernard = 29, Jerome = 26)
friend_ages

#Find the length of a vector (i.e., the number of elements in a vector)
# Number of friends
length(my_friends)

#Case of missing values
#I know that some of my friends (Nicolas and Thierry) have 2 child. But this information is not available (NA) for the remaining friends (Bernard and Jerome).

#In R missing values (or missing information) are represented by NA:
  
have_child <- c(Nicolas = "yes", Thierry = "yes", 
                  Bernard = NA, Jerome = NA)
have_child

# Check if have_child contains missing values
is.na(have_child)

#Get a subset of a vector

#Selection by positive indexing: select an element of a vector by its position (index) in square brackets
# Select my friend number 2
my_friends[2]

# Select my friends number 2 and 4 
my_friends[c(2, 4)]

# Select my friends number 1 to 3
my_friends[1:3]

#If you have a named vector, it's also possible to use the name for selecting an element:
friend_ages["Bernard"]

#Selection by negative indexing: Exclude an element
# Exclude my friend number 2
my_friends[-2]

# Exclude my friends number 2 and 4
my_friends[-c(2, 4)]

# Exclude my friends number 1 to 3
my_friends[-(1:3)]

# Select only married friends
my_friends[are_married == TRUE]

# Friends with age >=27
my_friends[friend_ages >= 27]

# Friends with age different from 27
my_friends[friend_ages != 27]

# Data with missing values
have_child

# Keep only values different from NA (!is.na())
have_child[!is.na(have_child)]

# Or, replace NA value by "NO" and then print
have_child[!is.na(have_child)] <- "NO"
have_child

#Note that, the "logical" comparison operators available in R are:
  
# <: for less than
# >: for greater than
# <=: for less than or equal to
# >=: for greater than or equal to
# ==: for equal to each other
# !=: not equal to each other


#Calculations with vectors
# My friends' salary in dollars
salaries <- c(2000, 1800, 2500, 3000)
names(salaries) <- c("Nicolas", "Thierry", "Bernard", "Jerome")
salaries

# Multiply salaries by 2
salaries*2

#Now, suppose that you want to multiply the salaries by different coefficients. The following R code can be used:
# create coefs vector with the same length as salaries
coefs <- c(2, 1.5, 1, 3)
# Multiply salaries by coeff
salaries*coefs


#Compute the square root of a numeric vector:
my_vector <- c(4, 16, 9)
sqrt(my_vector)

Other useful functions are:
  
  max(x) # Get the maximum value of x
min(x) # Get the minimum value of x
# Get the range of x. Returns a vector containing
# the minimum and the maximum of x
range(x) 

length(x) # Get the number of elements in x

sum(x) # Get the total of the elements in x

prod(x) # Get the product of the elements in x

# The mean value of the elements in x
# sum(x)/length(x)
mean(x) 
sd(x) # Standard deviation of x
var(x) # Variance of x
# Sort the element of x in ascending order
sort(x)

sum(salaries)
mean(salaries)

#The range (minimum, maximum) of salaries is:

range(salaries)

#Matrices

#A matrix is like an Excel sheet containing multiple rows and columns. It's used to combine vectors with the same type, which can be either numeric, character or logical. Matrices are used to store a data table in R. The rows of a matrix are generally individuals/observations and the columns are variables.

#Create and naming matrix
#To create easily a matrix, use the function cbind() or rbind() as follow:
  
# Numeric vectors
col1 <- c(5, 6, 7, 8, 9)
col2 <- c(2, 4, 5, 9, 8)
col3 <- c(7, 3, 4, 8, 7)
# Combine the vectors by column
my_data <- cbind(col1, col2, col3)
my_data

# Change rownames
rownames(my_data) <- c("row1", "row2", "row3", "row4", "row5")
my_data

#cbind(): combine R objects by columns
#rbind(): combine R objects by rows
#rownames(): retrieve or set row names of a matrix-like object
#colnames(): retrieve or set column names of a matrix-like object

#If you want to transpose your data, use the function t():
  
t(my_data)

#Note that, it's also possible to construct a matrix using the function matrix().

#The simplified format of matrix() is as follow:
  
matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,dimnames = NULL)

#data: an optional data vector
#nrow, ncol: the desired number of rows and columns, respectively.
#byrow: logical value. If FALSE (the default) the matrix is filled by columns, otherwise the matrix is filled by rows.
#dimnames: A list of two vectors giving the row and column names respectively.
  
mdat <- matrix(
  data = c(1,2,3, 11,12,13), 
  nrow = 2, byrow = TRUE,
  dimnames = list(c("row1", "row2"), c("C.1", "C.2", "C.3"))
)
mdat

#Dimensions of a matrix
#The R functions nrow() and ncol() return the number of rows and columns present in the data, respectively.

ncol(my_data) # Number of columns

nrow(my_data) # Number of rows

dim(my_data) # Number of rows and columns

#Get a subset of a matrix
#Select rows/columns by positive indexing
#rows and/or columns can be selected as follow: my_data[row, col]

# Select row number 2
my_data[2, ]

# Select row number 2 to 4
my_data[2:4, ]

# Select multiple rows that aren't contiguous
# e.g.: rows 2 and 4 but not 3
my_data[c(2,4), ]

# Select column number 3
my_data[, 3]

# Select the value at row 2 and column  3
my_data[2, 3]

# Select column 2
my_data[, "col2"]

#Exclude rows/columns by negative indexing
# Exclude column 1
my_data[, -1]

#Selection by logical: In the R code below, we want to keep only rows where col3 >=4:
col3 <- my_data[, "col3"]
my_data[col3 >= 4, ]

#Calculations with matrices
#It's also possible to perform simple operations on matrice. For example, the following R code multiplies each element of the matrix by 2:
  my_data*2

#Or, compute the log2 values:
    
    log2(my_data)
#rowSums() and colSums() functions: Compute the total of each row and the total of each column, respectively.
    # Total of each row
    rowSums(my_data)    

# Total of each column
    colSums(my_data)    
#If you are interested in row/column means, you can use the function rowMeans() and colMeans() for computing row and column means, respectively.

#Note that, it's also possible to use the function apply() to apply any statistical functions to rows/columns of matrices.
    
#The simplified format of apply() is as follow:
      
      #apply(X, MARGIN, FUN)
    #X: your data matrix
    #MARGIN: possible values are 1 (for rows) and 2 (for columns)
    #FUN: the function to apply on rows/columns
    #Use apply() as follow:

      
      # Compute row means
      apply(my_data, 1, mean)
   
    
    # Compute row medians
    apply(my_data, 1, median)
     
    # Compute column means
    apply(my_data, 2, mean)
             
    
  