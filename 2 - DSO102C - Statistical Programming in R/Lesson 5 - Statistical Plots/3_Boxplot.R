#Boxplot

# I will graph the number of breaks in yarn when setting up a loom. 
# That yarn is called warp. 
# The yarn that you actually weave with, that goes through the other yarn, 
# is called the weft.

View(warpbreaks)

weaving_boxplot <- ggplot(warpbreaks, aes(x =" ", y = breaks))

weaving + geom_boxplot() + xlab("")

# Mathematically screen for outliers
# Use the summary() function to find the 1st and 3rd quartiles.
summary(warpbreaks)
# 1st Quartile. = 18.25
# 3rd Quartile = 34.00

# Calculate IQR
IQR <- 34.00 - 18.25

# calculate Outlier Range 
Outlier_Range <- IQR * 1.5

# Add to the top and bottom quartiles
34 + Outlier_Range 
18.25 - Outlier_Range 

