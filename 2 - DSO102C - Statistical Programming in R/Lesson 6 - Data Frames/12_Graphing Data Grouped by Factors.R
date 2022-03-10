# Graphing Data Grouped by Factors

library("dplyr")

View(morley)

head(morley)

ggplot(morley, aes(x = Expt, y = Speed)) + geom_boxplot(aes(group = Expt))