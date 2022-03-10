# Cigarettes

# For this Final Project, I will use the Cigarette data set in the Ecdat package. 
# To do this, I first must install the Ecdat package.
install.packages("Ecdat")

# I am making this package accessible in my R session.
library(Ecdat)

# View 'Cigarette' Data Frame.
View(Cigarette)
head(Cigarette)

# Understand 'Cigarette' Data Frame.
help("Cigarette")

# 1 - Create a Boxplot of the average number of packs per capita by state.
ggplot(Cigarette, aes(x = state, y = packpc)) + 
  geom_boxplot(fill = "darkgoldenrod1", color = "firebrick") +
  xlab("State") + ylab("Yearly Packs Per Capita") +
  ggtitle("Yearly Average Number of Packs Per Capita by State")

# 1 - Which states have the highest number of packs? Which have the lowest?
Cigbystate <- Cigarette %>% group_by(state) %>% summarize(mean= mean(packpc)) %>% arrange(desc(mean))
View(Cigbystate)
# Kentucky has the highest number of packs per capita (173.90494), and Utah has the lowest (56.82223).

# 2 - Find the median  over all the states of the number of packs per capita 
# for each year. 
Cigmedian <- Cigarette %>% group_by(year) %>% summarise(median = median(packpc))
View(Cigmedian)

# 2 - Plot this median value for the years from 1985 to 1995.
unique(Cigarette$year)
ggplot(Cigmedian, aes(x = year, y = median)) + geom_point() + 
  ggtitle("National Median Number of Packs Per Capita from 1985 - 1995") +
  xlab("Year") +
  ylab("National Median Number of Packs Per Capita Per Year")

# 2 - Export the 'Cigmedian' data frame to excel.
write_xlsx(Cigmedian,"C:\\Users\\albi\\OneDrive\\Documents\\ENTITY ACADEMY - Data Science\\DSO102C - Statistical Programming in R\\Lesson 10 - Final Project\\Cigmedian.xlsx")

# 2 - What can you say about cigarette usage in these years?
# Sharp decline from 1989 - 1990.

# 3 - Create a scatter plot of price per pack vs number of packs per capita for all states and years.
ggplot(Cigarette, aes(x = avgprs, y = packpc)) + geom_point(color = "darkorange1") + geom_smooth(method = lm, color = "firebrick") +
  xlab("Average Price Per Pack Including Sales Tax (cents)") +
  ylab("Yearly Number of Packs Per Capita") +
  ggtitle("Average Price Per Pack (cents) vs. Number of Packs Per Capita Per Year")

# 4 - Are the price and the per capita packs positively correlated, negatively correlated, or uncorrelated?
# Negatively correlated.
# Histogram and Q-Q plot of average price per pack.
avgprs1 <- ggplot(Cigarette, aes(x=avgprs)) + geom_histogram(binwidth = 5, color = "firebrick", fill = "darkgoldenrod1") + 
  xlab("Average Price Per Pack (cents)") + ylab("Frequencies") + ggtitle("Histogram of Average Price Per Pack of Cigarettes (cents)")
avgprs2 <- ggplot(Cigarette, aes(sample = avgprs)) + geom_qq() + ggtitle("Q-Q Plot of Average Price Per Pack of Cigarettes (cents)")

# Histogram and Q-Q plot of price per capita.
packpc1 <- ggplot(Cigarette, aes(x=packpc)) + geom_histogram(binwidth = 5, color = "firebrick", fill = "darkgoldenrod1") +
  xlab("Yearly Number of Packs Per Capita") + ylab("Frequencies") + ggtitle("Histogram of Yearly Number of Packs Per Capita")
packpc2 <- ggplot(Cigarette, aes(sample = packpc)) + geom_qq() + ggtitle("Q-Q Plot of Yearly Number of Packs Per Capita")
grid.arrange(avgprs2, packpc2, ncol = 2)

avgprs1
packpc1
avgprs2
packpc2


# 5 - Change your scatter plot to show the points for each year in a different color.
ggplot(Cigarette, aes(x = avgprs, y = packpc, color = year)) + geom_point() + geom_smooth(method = lm, color = "firebrick") +
  xlab("Average Price Per Pack Including Sales Tax (cents)") +
  ylab("Yearly Number of Packs Per Capita") +
  ggtitle("Average Price Per Pack (cents) vs. Number of Packs Per Capita Per Year")

# 6 - Do a linear regression for these two variables.
# Checking for normality
ggplot(Cigarette, aes(x=avgprs)) + geom_histogram(binwidth = 5, color = "firebrick", fill = "darkgoldenrod1") 
avgprs <- ggplot(Cigarette, aes(sample = avgprs)) + geom_qq()
ggplot(Cigarette, aes(x=packpc)) + geom_histogram(binwidth = 5, color = "firebrick", fill = "darkgoldenrod1") 
packpc <- ggplot(Cigarette, aes(sample = packpc)) + geom_qq()

# 6 - What is the correlation between the two variables? 
# Negative correlation.

# 6 - Computing strength of correlation
cor.test(Cigarette$avgprs, Cigarette$packpc, method = "pearson", use = "complete.obs")

# 6 - Computing linear regression
regression1 <- lm(packpc ~ avgprs, Cigarette)
regression1
summary(regression1)

# 7 - The plot above does not adjust for inflation. You can adjust the price 
# of a pack of cigarettes for inflation by dividing the avgprs variable by 
# the cpi variable. Create an adjusted price for each row, then re-do your 
# scatter plot and linear regression using this adjusted price.
# Adjusting the price of a pack of cigarettes for inflation
Adjusted <- Cigarette %>% mutate(Adj = (avgprs/cpi))
View(Adjusted)
# Redo scatterplot
ggplot(Adjusted, aes(x = Adj, y = packpc)) + geom_point(color = "darkorange1") + geom_smooth(method = lm, color = "firebrick") +
  xlab("Inflation-Adjusted Average Price Per Pack, Including Sales Tax (cents)") +
  ylab("Yearly Number of Packs Per Capita") +
  ggtitle("Inflation-Adjusted Average Price Per Pack (cents) vs. Number of Packs Per Capita Per Year")
# Redo linear regression
regression2 <- lm(packpc ~ Adj, Adjusted)
regression2
summary(regression2)
cor.test(Adjusted$Adj, Adjusted$packpc, method = "pearson", use = "complete.obs")

# 8 - Create a data frame with just the rows from 1985.
Cigs85 <- Cigarette %>% select(year, packpc) %>% filter(year == 1985)
View(Cigs85)
Cigs95 <- Cigarette %>% select(year, packpc) %>% filter(year == 1995)
View(Cigs95)
# Both df have 2 columns, 48 entries.

# 8 - Use a paired t-test to see if the number of packs per capita in 1995 
# was significantly different than the number of packs per capita in 1985.
t.test(Cigs85$packpc, Cigs95$packpc, paired = TRUE)

# 9 - Income and Cigarette consumption
# Scatter plot with line of best fit.
ggplot(Cigarette, aes(x = income, y = packpc)) + geom_point(color = "darkorange1") + 
  geom_smooth(method = lm, color = "firebrick") +
  xlab("Total State Personal Income (cents)") +
  ylab("Yearly Number of Packs Per Capita") +
  ggtitle("Total State Personal Income ($) vs. Number of Packs Per Capita Per Year")

# Scatter plot with line of best fit, log scale.
ggplot(Cigarette, aes(x = income, y = packpc)) + geom_point(color = "darkorange1") + 
  scale_x_log10() +
  geom_smooth(method = lm, color = "firebrick") +
  xlab("Total State Personal Income (cents)") +
  ylab("Yearly Number of Packs Per Capita") +
  ggtitle("Total State Personal Income, Logarithmic Scale ($) vs. Number of Packs Per Capita Per Year")

# Histogram of Income
ggplot(Cigarette, aes(x=income)) + geom_histogram(binwidth = 10000000, color = "firebrick", fill = "darkgoldenrod1") +
  ggtitle("Histogram of Total State Personal Income ($)") + xlab("Total State Personal Income ($)") + ylab("Frequencies")
ggplot(Cigarette, aes(sample = income)) + geom_qq() + ggtitle("Q-Q Plot of Total State Personal Income ($)")
# Total state personal income is not normally distributed

# Calculation of correlation coefficient between income and pack per capita.
cor.test(Cigarette$income, Cigarette$packpc, method = "pearson", use = "complete.obs")
cor.test(Cigarette$income, Cigarette$packpc, method = "spearman", use = "complete.obs")

# Linear regression between income and packs per capita.
regression3 <- lm(packpc ~ income, Cigarette)
regression3
summary(regression3)