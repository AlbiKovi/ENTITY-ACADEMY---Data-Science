# New Haven Temperatures

library("dplyr")

# This data set is a time series.
View(nhtemp)

# Years of temperature measurements as a vector.
Year <- c(1912:1971)
Year

# Temperatures as a vector.
Temperature <- nhtemp
Temperature

# Data frame of years and temperatures, for easier view and analysis.
df1 <- data.frame(Year, Temperature)
View(df1)

# The goal is to  test whether the average over the 1st 25 years (1912 to 1936) 
# of the data is statistically significantly different than the average over 
# the last 25 years (1947 to 1971) of the data set.

# Vector of measurement number
measurement_id <- c(1:25)
measurement_id

# Vector of temperatures over 1st 25 years (1912 to 1936) in data set.
first25 <- nhtemp[1:25]
first25

# Vector of temperatures over last 25 years (1912 to 1936) in data set.
last25 <- nhtemp[36:60]
last25

# Data frame of measurement numbers and temperatures durinf 1st and last 25 
# years of data.
df2 <- data.frame(measurement_id, first25, last25)
View(df2)

# Dependent/paired t-test of temperatures during 1st and last 25 years of data.
t_dep <- t.test(df2$first25, df2$last25, paired = TRUE)
t_dep

# Comparison of mean of first and last 25 years of temperature measurements.
mean(first25)
mean(last25)

# Data frame of data for use in graphical interpretation
df4 <- data.frame(measurement_id, difference)
View(df4)

# Mean difference between first and last 25years of NH temperaure measurements.
mean(df4$difference)

# Reshape data frame for graphical analysis
library(reshape2)
df5 <- melt(df4, measure.vars = c("difference"))
View(df5)

# Histogram of data to determine if it is normally distributed
ggplot(df5, aes(x = difference)) + geom_histogram(binwidth = 0.5, color = "blue", fill = "dark blue") +
  geom_vline(xintercept = df5$null.value, color = "green") +
  ggtitle("Histogram of Differences Btwn 1st and Last 25 Years of NH Temperature Data") +
  xlab("Difference between First and Last 25 Years of New Haven Temperatures Data (F)") +
  ylab("Frequencies")

# QQ Plot of data to determine if it is normally distributed
ggplot(df5, aes(sample = difference)) + geom_qq() + 
  ggtitle("QQ Plot of the Difference Btwn the 1st and Last 25 Yrs of NH Temperatures (F)")
