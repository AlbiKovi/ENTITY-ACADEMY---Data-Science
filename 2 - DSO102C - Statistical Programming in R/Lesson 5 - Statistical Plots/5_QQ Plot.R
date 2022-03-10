# QQ Plot


# Example 1
View(warpbreaks)

ggplot(warpbreaks, aes(sample = breaks)) + geom_qq()

# Example 2
View(morley)

ggplot(morley, aes(sample = Speed)) + geom_qq()
