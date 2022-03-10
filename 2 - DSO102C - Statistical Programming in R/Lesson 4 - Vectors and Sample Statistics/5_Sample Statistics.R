#Sample Statistics for Vectors

View(quakes)
#Quakes is a dataset with information about earthquakes off the coast of Fiji.
#Quakes is a dataframe.

magnitude <- quakes$mag
print(magnitude)
#Turning one column (mag) from the dataframe into a vector.

#Measures of Central Tendency
mean(magnitude)
median(magnitude)

#Measures of Dispersion
max(magnitude)
min(magnitude)
range(magnitude)
var(magnitude)
sd(magnitude)

summary(magnitude)

length(magnitude)
#Use length to calculate sample size.

sort(magnitude)
#Sort data in ascending order