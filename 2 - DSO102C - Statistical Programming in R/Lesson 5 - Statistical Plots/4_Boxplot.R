View(cars)

# The head() function shows me the first six rows of data.
head(cars)

# Creating a boxplot to represent the stopping distance.
d <- ggplot(cars, aes(x = "", y = dist))
d + geom_boxplot() + xlab("")

# The box plot is created from the following values:
# Minimum: The smallest value in the vector.
# 1st Quartile: The value below which one quarter of the values lie.
# Median: The middle value in the vector: one-half of the values are larger, 
# and one-half of the values are smaller.
# 3rd Quartile: The value below which three quarters of the values lie.
# Maximum: The largest value in the vector.

summary(cars$dist)
#Q1 = 26.00, Q3 = 56.00

IQR <- 56.00 - 26.00

IQR * 1.5

#Limit of Upper Outliers
56 + 45

#Limit of Lower Outliers
26 - 45

