# Calculating Correlation

library(ggplot2)

library("PerformanceAnalytics")

library("corrplot")

View(mtcars)

help(mtcars)

# Computes correlation of single quantitative data set. Only 2 variables at a time.
cor.test(mtcars$hp, mtcars$cyl, method = "pearson", use = "complete.obs")

# Creates correlation matrix. Requires subsetting so that only quantitative, 
# continuous data is included.
mtcars_quant <- mtcars[, c(1,2,3,4,5,6,7)]
View(mtcars_quant)
chart.Correlation(mtcars_quant, histogram = FALSE, method = "pearson")

# Cor() function creates a correlation matrix table from quantitative data set.
corr_matrix <- cor(mtcars_quant)
corr_matrix

# Corrplot()
corrplot(corr_matrix, type = "upper", order = "hclust")

