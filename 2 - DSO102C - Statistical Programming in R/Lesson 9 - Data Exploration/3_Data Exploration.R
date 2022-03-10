# Data Exploration - Statistical Summary

View(gapminder)

# Use the following command to create a tibble that has the medians of 
# life expectancy and per capita GDP for all of the countries in Africa:
gm_medians <- gapminder %>%
  filter(continent == "Africa") %>%
  group_by(year) %>%
  summarise(life_med = median(lifeExp), gdp_med = median(gdpPercap))
gm_medians

life <- gapminder %>% group_by(year) %>% summarise(life.med = median(lifeExp))
View(life)