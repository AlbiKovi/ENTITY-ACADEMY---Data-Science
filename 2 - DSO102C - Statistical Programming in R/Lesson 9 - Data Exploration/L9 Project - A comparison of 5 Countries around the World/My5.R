# 5 Countries

help("gapminder")
View("gapminder")

# To begin with, I downloaded 2 new packages in R.
install.packages("purr")
install.packages("writexl")

# 5 Countries to compare
# United States
# Bulgaria
# Venezuela
# Denmark
# Italy

# My 5 chosen countries and the associated observations.
My5 <- gapminder %>%
  filter(country %in% c("United States", "Bulgaria", "Venezuela", "Denmark", "Italy")) %>%
  select(country, year, lifeExp, gdpPercap)
View(My5)
  
# 1952 GDP Per Capita in order from highest to lowest.
Old5 <- filter(My5, year == 1952) %>% arrange(desc(gdpPercap))
View(Old5)

# 2007 GDP Per Capita in order from highest to lowest.
Recent5 <- filter(My5, year == 2007) %>% arrange(desc(gdpPercap))
View(Recent5)

# Revised - My 5 chosen countries and the associated observations.
My5Revised <- gapminder %>%
  filter(country %in% c("United States", "Bulgaria", "Venezuela", "Denmark", "Italy")) %>%
  select(country, year, gdpPercap)
View(My5Revised)

# Revised - 1995 & 2007, GDP Per Capita in order from highest to lowest.
filter(My5Revised, year == 1952) %>% arrange(desc(gdpPercap))
filter(My5Revised, year == 2007) %>% arrange(desc(gdpPercap))

# Revised - 1995 & 2007, Median world gdp per capita.
filter(World2, year == 1952) %>% arrange(desc(gdp_med))
filter(World2, year == 2007) %>% arrange(desc(gdp_med))

# Line Plot, Life expectancy vs. year.
ggplot(My5) + geom_line(aes(x = year, y = lifeExp, color = country)) +
  xlab("Year") + ylab("Life Expectancy (years)") + 
  ggtitle("A Comparison of Life Expectancy in Five Countries")

# Line Plot, Per Capita GDP vs. year.
ggplot(My5) + geom_line(aes(x = year, y = gdpPercap, color = country)) +
  xlab("Year") + ylab("GDP Per Capita  (US$, inflation-adjusted)") + 
  ggtitle("A Comparison of GDP Per Capita in Five Countries")

# Median life expectancy of all 5 countries
My5_medians <- gapminder %>%
  filter(country %in% c("United States", "Bulgaria", "Venezuela", "Denmark", "Italy")) %>%
  group_by(country) %>%
  group_by(year) %>%
  summarise(life_med = median(lifeExp))
View(My5_medians)

# Median life expectancy as a function of year, for all countries.
World <- gapminder %>% group_by(year) %>% summarise(life_med = median(lifeExp))

# New data frame, want to learn how to join with 'My5' data frame.
World2 <- gapminder %>% group_by(year) %>% summarise(life_med = median(lifeExp), gdp_med = median(gdpPercap))
View(World2)
# Different number of columns and different column names. Need to make 'World' into a country.

NewMy5 <- My5 %>% rename(gdp = gdpPercap)
View(NewMy5)

my_data %>% 
  rename(
    sepal_length = Sepal.Length,
    sepal_width = Sepal.Width
  )

# Median life expectancy as a function of year, for all countries.
ggplot(World) + geom_line(aes(x = year, y = life_med), color = "blue1") +
  xlab("Year") + ylab("Life Expectancy (years)") + 
  ggtitle("World Median Life Expectancy (years)")

# For what years is the life expectancy of each of the countries you 
# selected above the median life expectancy for all countries?
USA <- gapminder %>% 
  filter(country %in% c("United States")) %>%
  group_by(year) %>% 
  summarise(life_med = median(lifeExp))
View(USA)

# Bulgarian life expectancy as a function of time.
Bulgaria <- gapminder %>% 
  filter(country %in% c("Bulgaria")) %>%
  group_by(year) %>% 
  summarise(life_med = median(lifeExp))
View(Bulgaria)

# Italian life expectancy as a function of time.
Italy <- gapminder %>% 
  filter(country %in% c("Italy")) %>%
  group_by(year) %>% 
  summarise(life_med = median(lifeExp))
View(Italy)

# Danish life expectancy as a function of time.
Denmark <- gapminder %>% 
  filter(country %in% c("Denmark")) %>%
  group_by(year) %>% 
  summarise(life_med = median(lifeExp))
View(Denmark)

# Venezuelan life expectancy as a function of time.
Venezuela <- gapminder %>% 
  filter(country %in% c("Venezuela")) %>%
  group_by(year) %>% 
  summarise(life_med = median(lifeExp))
View(Venezuela)

# World and USA
d1 <- merge(World, USA, by = "year")
d1

# World, USA, Bulgaria
d2 <- merge(d1, Bulgaria, by = "year")
d2

# World, USA, Bulgaria, Italy
d3 <- merge(d2, Italy, by = "year")
d3

# World, USA, Bulgaria, Italy, Denmark
d4 <- merge(d3, Denmark, by = "year")
d4

# World, USA, Bulgaria, Italy, Denmark, Venezuela
d5 <- merge(d4, Venezuela, by = "year")
d5

# Join multiple data frames simultaneously, horizontally.
joined <- list(World, USA, Bulgaria, Italy, Denmark, Venezuela) %>% reduce(left_join, by = "year")
View(joined)

# Effect of GDP Per Capita (US$, inflation-adjusted) on Life Expectancy (years)
ggplot(My5, aes(x = year, y = lifeExp, color = country)) +
  geom_line() + geom_point(aes(size = gdpPercap)) +
  xlab("Year") +
  ylab("Life Expectancy (years)") + 
  ggtitle("Life Expectancy and GDP Per Capita US$, (inflation-adjusted)")

# Effect of GDP Per Capita (US$, inflation-adjusted) on Life Expectancy (years)
ggplot(My5, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point(aes(alpha = year), size = 3) + geom_path() +
  xlab("GDP Per Capita  (US$, inflation-adjusted)") +
  ylab("Life Expectancy (years)") +
  ggtitle("Effect of GDP Per Capita (US$, inflation-adjusted) on Life Expectancy (years)") +
  scale_alpha(range = c(0.3, 1.0))

# Side by side comparison
life_exp <- ggplot(My5) + geom_line(aes(x = year, y = lifeExp, color = country)) +
  xlab("Year") + ylab("Life Expectancy (years)")
GDP <- ggplot(My5) + geom_line(aes(x = year, y = gdpPercap, color = country)) +
  xlab("Year") + ylab("GDP Per Capita (US$, inflation-adjusted)")
grid.arrange(life_exp, GDP, ncol = 1)

# Export a data frame into an excel file.
write_xlsx(joined,"C:\\Users\\albi\\OneDrive\\Documents\\ENTITY ACADEMY - Data Science\\DSO102C - Statistical Programming in R\\Lesson 9 - Data Exploration\\My5.xlsx")
# write_xlsx(the dataframe name,"path to store the Excel file\\file name.xlsx")

# Export a data frame into an csv file.
write.csv(joined,"C:\\Users\\albi\\OneDrive\\Documents\\ENTITY ACADEMY - Data Science\\DSO102C - Statistical Programming in R\\Lesson 9 - Data Exploration\\My5.csv", row.names = TRUE)