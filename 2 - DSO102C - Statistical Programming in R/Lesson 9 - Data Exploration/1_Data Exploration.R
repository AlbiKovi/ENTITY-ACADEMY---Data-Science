# Data Exploration - 1

install.packages("gapminder")
library(gapminder)
head(gapminder)
View(gapminder)

# View all countries in the data set.
gapminder$country

# Using the levels() function, see all the different values that 'country' 
# can take.
levels(gapminder$country)

# 'Year' is a numerical value, so it does not have levels. The unique()
# function returns all the unique values for the 'year' factor in a vector.
unique(gapminder$year)

# How has the population of the countries changed over the years?
# Creating a boxplot for each year value.
ggplot(gapminder, aes(x = factor(year), y = pop)) + geom_boxplot()

# This shows that some years had a very high population, but it makes it 
# quite difficult to see the population of the smaller countries. You can 
# change the vertical scale to be logarithmic; this allows you to see the small 
# values as well as the large ones.
ggplot(gapminder, aes(x = factor(year), y = pop)) + geom_boxplot() + scale_y_log10()

# Most populous countries in 2007, in descending order.
biggest <- gapminder %>% filter(year == 2007) %>% arrange(desc(pop))
biggest

# Print out first 10 rows of 'biggest'.
head(biggest, n = 10)

# Per Capital GDP per year.
gapminder %>% filter(year) %>% arrange(desc(gdp))
ggplot(gapminder, aes(x = factor(year), y = gdpPercap)) + geom_boxplot()

# Calculating outliers in GDP Per Capita.
summary(gapminder$gdpPercap)

# Calculating outliers in GDP Per Capita.
# Calculating IQR
Q3 <- 9325.5
Q1 <- 1202.1
IQR <- Q3 - Q1
IQR

# Calculating outliers in GDP Per Capita.
# IQR * 1.5
B0 <- IQR * 1.5
B0

# Calculating outliers in GDP Per Capita.
# Calculate upper and lower boundaries for outliers.
B1 <- Q1 - B0
B1
B3 <- Q3 + B0
B3

# Calculating outliers in GDP Per Capita.
# Filter the high outliers in GDP Per Capita.
filter(gapminder, gdpPercap > B3)
ggplot(gapminder, aes(x = factor(year), y = lifeExp)) + geom_boxplot()

# Find the country with the lowest life expectancy in 1992.
filter(gapminder, lifeExp < 28)

# Find the country with the lowest life expectancy in the early years (1952 - 1982).
gm.Europe <- filter(gapminder, continent == "Europe")
OldEurope1 <- filter(gm.Europe, year <= 1982)
OldEurope1 
View(OldEurope1)
OldEurope2 <- gapminder %>% filter(continent == "Europe") %>% arrange(lifeExp)
OldEurope2

