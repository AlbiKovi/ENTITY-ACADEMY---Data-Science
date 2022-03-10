# Independent t-Test

#Example 1
library("dplyr")

View(frostedflakes)

t_ind <- t.test(frostedflakes$Lab, frostedflakes$IA400, alternative="two.sided", var.equal=FALSE)
print(t_ind)

t_ind <- t.test(frostedflakes$Lab, frostedflakes$IA400, alternative="greater", var.equal=FALSE)
print(t_ind)

t_ind <- t.test(frostedflakes$Lab, frostedflakes$IA400, alternative="less", var.equal=FALSE)
print(t_ind)

# install.packages("reshape2")

ff <- melt(frostedflakes, id="X")
View(ff)

ggplot(ff) + geom_boxplot(aes(x = variable, y = value), color = "blue", fill = "dark blue") + 
  xlab("Test Method") +
  ylab("Weight Percentage of Sugar")


#Example 2
install.packages("DAAG")

erie <- greatLakes[,1]

huron <- greatLakes[,2]