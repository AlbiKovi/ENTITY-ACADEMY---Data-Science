# Computing Linear Regression

library(ggplot2)

library("PerformanceAnalytics")

library("corrplot")

View(cars)

head(cars)

linreg <- lm(dist ~ speed, cars)
print(linreg)