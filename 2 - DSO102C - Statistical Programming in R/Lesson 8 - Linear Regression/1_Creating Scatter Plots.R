# Creating Scatter Plots

library(ggplot2)

View(faithful)

ggplot(faithful, aes(x = eruptions, y = waiting)) + 
  geom_point(color = "firebrick") +
  ggtitle("Old Faithful Eruption vs Waiting Times") +
  xlab("Eruption Time (minutes)") +
  ylab("Waiting Time (minutes)") +
  geom_smooth(method = lm, se = FALSE, color = "goldenrod2")