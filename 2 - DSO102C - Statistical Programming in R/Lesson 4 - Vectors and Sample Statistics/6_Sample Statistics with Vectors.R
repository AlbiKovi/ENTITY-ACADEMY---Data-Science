# Length of eruptions of the Old Faithful geyser as well as the waiting time in minutes 
# to the next eruption.

# Access the data set. 
# Sample Statistics with Vectors
# Write the name of the chosen data set.
library(datasets)
faithful

# Make a vector from the 'waiting' column in the 'faithful' dataframe.
eruption.waiting <- faithful$waiting

#Use the length function to determine the sample size.
length(eruption.waiting)

#Mean and medium of wait times.
mean(eruption.waiting)
median(eruption.waiting)
min(eruption.waiting)
max(eruption.times)
summary(eruption.times)


