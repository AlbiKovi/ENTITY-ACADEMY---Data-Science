# Histogram

# I will graph the number of breaks in yarn when setting up a loom. 
# That yarn is called warp. 
# The yarn that you actually weave with, that goes through the other yarn, 
# is called the weft. 

View(warpbreaks)

weaving <- ggplot(warpbreaks, aes(x=breaks))

weaving + geom_histogram(binwidth = 10, color = "blue", fill = "dark blue") 
+ ggtitle("Histogram of Warp Breaks When Weaving") 
+ xlab("Warp Breaks") 
+ ylab("Count of Values")