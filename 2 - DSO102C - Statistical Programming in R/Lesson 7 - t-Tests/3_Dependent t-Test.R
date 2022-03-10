# Dependent t-Test

library("dplyr")

View(scores)

head(scores)

t_dep <- t.test(scores$postest, scores$pretest, paired = TRUE)
t_dep

ss <- melt(scores, measure.vars = c("pretest", "postest"))
View(ss)

# One way to graph the data for the dependent t-test
ggplot(ss) + geom_boxplot(aes(x = variable, y = value), color = "blue", fill = "dark blue") + 
  xlab("Test") + ylab("Score")


# Another Way to graph the data for the dependent t-test
dd <- scores$postest - scores$pretest

df <- data.frame(dd)

ggplot(df, aes(x = dd)) + geom_histogram(binwidth = 1, color = "blue", fill = "dark blue") +
  xlab("Difference between postest and pretest") +
  ylab("Frequencies")