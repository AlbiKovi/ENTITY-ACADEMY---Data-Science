# Exploration of mtcars Data Set


# Task
# From the mtcars data frame, create a box plot of miles per gallon 
# (the mpg variable) grouped by the number of cylinders in the engine 
# (the cyl variable). Do these box plots make sense? 
# Also, use the summarize() and group_by() functions to compute how many 
# cars have four cylinders, how many have six, and how many have eight.


library("dplyr")

# View entire data frame
View(mtcars)

# View first 6 rows of data frame
head(mtcars)

# Understand meaning of variables
help(mtcars)

# Boxplot
ggplot(mtcars, aes(x = cyl, y = mpg)) + 
  geom_boxplot(aes(group = cyl), fill = "goldenrod", color = "deepskyblue4") +
  ggtitle("Boxplot of Miles Per Gallon (mpg)") + 
  xlab("Number of Cylinders") +
  ylab("Miles Per Gallon (mpg)")

# How many cars have 4, 6, or 8 cylinders?
mtcars %>% group_by(cyl) %>% summarize(Count = n())


