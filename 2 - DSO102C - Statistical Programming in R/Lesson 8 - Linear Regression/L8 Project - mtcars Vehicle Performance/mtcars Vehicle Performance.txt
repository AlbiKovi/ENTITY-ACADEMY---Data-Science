# mtcars: Vehicle Performance

library(ggplot2)

library("PerformanceAnalytics")

library("corrplot")

View(mtcars)

help(mtcars)

# We are examining the influence of engine horsepower (hp) on quarter mile time (qsec),
# and the influence of vehicle weight (wt) on quarter mile time (qsec).

# All the data is normally distributed.
ggplot(mtcars, aes(x = qsec)) + geom_histogram()

ggplot(mtcars, aes(sample = qsec)) + geom_qq()

ggplot(mtcars, aes(x = hp)) + geom_histogram()

ggplot(mtcars, aes(sample = hp)) + geom_qq()

ggplot(mtcars, aes(x = wt)) + geom_histogram()

ggplot(mtcars, aes(sample = wt)) + geom_qq()


# Create a scatter plot with a trend line where the x-axis is engine 
# horsepower and the y-axis is quarter mile time.
# What is the relationship between quarter mile time and vehicle weight?
ggplot(mtcars, aes(x = hp, y = qsec)) + 
  geom_point(color = "firebrick") +
  ggtitle("Scatter Plot of Quarter Mile Time (seconds) vs. Engine Horsepower (hp)") +
  xlab("Engine Horsepower (hp)") +
  ylab("Quarter Mile Time (seconds)") +
  geom_smooth(method = lm, se = TRUE, color = "goldenrod2")

# Compute strength of correlation between quarter mile time and engine
# horsepower.
corr1 <- cor.test(mtcars$hp, mtcars$qsec, method = "pearson", use = "complete.obs")
corr1

# Compute the linear regression for quarter mile time and engine horsepower.
# What is the equation of the line?
# What is the R-squared value?
# Are these results expected?
linreg1 <- lm(qsec ~ hp, mtcars)
print(linreg1)
summary(linreg1)

# Create a scatter plot with a trend line where the x-axis is vehicle weight
# and the y-axis is quarter mile time.
# What is the relationship between time and vehicle weight?
ggplot(mtcars, aes(x = wt, y = qsec)) + 
  geom_point(color = "firebrick") +
  ggtitle("Scatter Plot of Quarter Mile Time (seconds) vs. Vehicle Weight (1000 lbs)") +
  xlab("Vehicle Weight (1000 lbs)") +
  ylab("Quarter Mile Time (seconds)") +
  geom_smooth(method = lm, se = TRUE, color = "goldenrod2")

# Compute strength of correlation between quarter mile time and vehicle
# weight.
corr2 <- cor.test(mtcars$wt, mtcars$qsec, method = "pearson", use = "complete.obs")
corr2

# Compute the linear regression for quarter mile time and vehicle weight.
# What is the equation of the line?
# What is the R-squared value?
# Are these results expected?
linreg2 <- lm(qsec ~ wt, mtcars)
print(linreg2)
summary(linreg2)