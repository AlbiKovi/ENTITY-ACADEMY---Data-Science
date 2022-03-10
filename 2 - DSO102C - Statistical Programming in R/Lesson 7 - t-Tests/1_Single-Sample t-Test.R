# Single-Sample t-Test

library("dplyr")

# Example 1:
head(frostedflakes)

# This is a frame with two variables: 
# Lab, which contains the percentage of sugar measured in a 25 gram sample 
# of Frosted Flakes using a laboratory high performance liquid chromatography 
# technique, and IA400, which contains the percentage of sugar in the 
# same sample measured by a machine (the Infra-Analyzer 400).

# According to the nutritional information supplied with Frosted Flakes, 
# the sugar percentage by weight is 37%. You will create a hypothesis test 
# to see if the data set provides evidence to the contrary. To set up the 
# hypothesis test, define the null and alternate hypotheses: 
#   H0: mu = 37 & H1: mu = != 37

t_obj <- t.test(frostedflakes$Lab, mu = 37)
print(t_obj)

d <- ggplot(frostedflakes, aes(x = Lab))

d + geom_histogram(binwidth = 1, color = "blue", fill = "dark blue") +
  geom_vline(xintercept = t_obj$conf.int[1], color = "red") +
  geom_vline(xintercept = t_obj$conf.int[2], color = "red") +
  geom_vline(xintercept = t_obj$null.value, color = "green") +
  ggtitle("Histogram of Frosted Flakes Sugar Content") +
  xlab("Measured Sugar Content (grams)") +
  ylab("Frequencies")

ggplot(frostedflakes, aes(sample = Lab)) + geom_qq() + ggtitle("QQ Plot of Frosted Flakes Sugar Content")



# Example 2:

head(LakeHuron)

View(LakeHuron)