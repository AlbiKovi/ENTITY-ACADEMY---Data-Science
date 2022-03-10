# Rivers of North America

# Access the built in data set 'rivers' which has the length in miles of 141 
# major rivers in North America. 
View(rivers)

# Build a data frame of this data set that is suitable for graphing:
rr <- data.frame(rivers)

# Display the  first 6 rows of data in the data frame:
head(rr)

# Show entire data set:
rr

# Compute summary statistics of data set:
summary(rivers)

# Histogram
H <- ggplot(rr, aes(x = rivers))
H + geom_histogram(binwidth = 100, fill = "deepskyblue", color = "darkmagenta") + 
  ggtitle("Length of Rivers of North America") + 
  xlab("Length (miles)") + ylab("Frequencies")

# Box Plot
B <- ggplot(rr, aes(x = " ", y = rivers))
B + geom_boxplot(fill = "deepskyblue", color = "darkmagenta") + 
  ggtitle("Length of Rivers of North America") +
  xlab(" ") + 
  ylab("Length (miles)")

# QQ Plot
QQ <- ggplot(rr, aes(sample = rivers))
QQ + geom_qq() + ggtitle("Length of Rivers of North America")

# Data without outliers
RR <- rr$rivers
#Only the values which meet the condition of >= 8 hours of sleep.
print(RR)

No_outliers <- RR[RR < 1235]
print(No_outliers)
summary(No_outliers)

