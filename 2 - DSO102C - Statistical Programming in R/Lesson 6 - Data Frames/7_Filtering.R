library("dplyr")

Pets
# save the data frames that are returned by filter() for further analysis by 
#assigning the returned value to a variable.

Pets1 <- filter(Pets, Animal == "Goat")
Pets1

Pets2 <- filter(my_pets, Weight > 3)
Pets2 

Pets3 <- filter(Pets, Animal == "Goat", Age <= 2)
Pets3

# %in% looks for anything in the vector criteria specified.
Pets4 <- filter(Pets, Weight %in% c("45", "35", "3.5"))
Pets4

Pets5 <- filter(Pets, Animal %in% c("Goat", "Cat", "Guinea Pig"))
Pets5

# Everything that is not a gold fish.
Pets6 <- filter(Pets, Animal != "Gold Fish")
Pets6

# Additional Practice
View(mtcars)
head(mtcars)
help(mtcars)

mtcars1 <- summarize(mtcars, median.mpg = median(mpg))
mtcars1

mtcars$cyl

summarize(mtcars)
