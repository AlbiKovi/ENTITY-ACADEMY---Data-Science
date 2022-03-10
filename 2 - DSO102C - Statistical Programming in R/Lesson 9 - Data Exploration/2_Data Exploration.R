# Data Exploration - 2

gm_Angola <- filter(gapminder, country == "Angola")
head(gm_Angola)

# Life Expectancy in Angola
ggplot(gm_Angola) + geom_line(aes(x = year, y = lifeExp)) + 
  xlab("Year") +
  ylab("Life Expectancy") + 
  ggtitle("Life Expectancy in Angola")

# Per Capita GDP for Angola
ggplot(gm_Angola) + geom_line(aes(x = year, y = gdpPercap)) + 
  xlab("Year") +
  ylab("Per Capita GDP") + 
  ggtitle("Per Capita GDP in Angola")

# Comparing four African countries: Angola, Ghana, Ethiopia, and South Africa.
gm_Africa4 <- filter(gapminder, country %in% c("Angola", "Ghana", "Ethiopia", "South Africa"))
gm_Africa4

# Select only relevant data
gm_AfricaClean <- select(gm_Africa4, country, year, lifeExp, gdpPercap)
head(gm_AfricaClean)

# Plotting life expectancy
ggplot(gm_AfricaClean) + geom_line(aes(x = year, y = lifeExp, color = country)) +
  ylab("Life Expectancy") + ggtitle("Life Expectancy in Four Countries")

# Plotting GDP Per Capita
ggplot(gm_AfricaClean) + geom_line(aes(x = year, y = gdpPercap, color = country)) +
  ylab("Per Capita GDP") + ggtitle("GDP in Four Countries")

# Combining filtering and selecting
gm_AfricaClean <- gapminder %>%
  filter(country %in% c("Angola", "Ghana", "Ethiopia", "South Africa")) %>%
  select(country, year, lifeExp, gdpPercap)

# Plot life expectancy and GDP Per Capita together
life_exp <- ggplot(gm_AfricaClean) + geom_line(aes(x = year, y = lifeExp, color = country))
GDP <- ggplot(gm_AfricaClean) + geom_line(aes(x = year, y = gdpPercap, color = country)) + ylab("Life Expectancy")

grid.arrange(life_exp, GDP, ncol = 1)

# Adding additional variables to the plot
ggplot(gm_AfricaClean, aes(x = year, y = lifeExp, color = country)) +
  geom_line() + geom_point(aes(size = gdpPercap)) +
  ylab("Life Expectancy") + ggtitle("Life Expectancy and GDP in Four Countries")

# Plotting GDP and Life Expectancy Against Each Other
ggplot(gm_AfricaClean, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point()

# Connecting Points with geom_line() vs. geom_path()
ggplot(gm_AfricaClean, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point() + geom_line()
# This does not help you see the evolution of the values over time. 
# Instead, it connects each point with the next point that has the closest 
# horizontal distance, even though the points do not appear in the data frame 
# in that order. 

# You can fix this by using geom_path() instead of 
# geom_line(); geom_path() draws lines between adjacent values in the 
# data frame. Making the change like this:
ggplot(gm_AfricaClean, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point() + geom_path()

# Making Points Transparent
ggplot(gm_AfricaClean, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point(aes(alpha = year)) + geom_path()

# You can change the range of transparency values used by introducing a 
# scale_alpha() term in the plot; the arguments to this will be the lowest 
# and highest transparency values to be used. You will use a vector of 
# values from 0.3 to 1.0. You will also make the points larger with the 
# size= argument:
ggplot(gm_AfricaClean, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point(aes(alpha = year), size = 3) + 
  geom_path() +
  scale_alpha(range = c(0.3, 1.0))

# Clearly Labeling the Graph
ggplot(gm_AfricaClean, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point(aes(alpha = year), size = 3) + 
  geom_path() +
  scale_alpha(range = c(0.3, 1.0)) +
  xlab("Per capita GDP") + ylab("Life Expectancy")
