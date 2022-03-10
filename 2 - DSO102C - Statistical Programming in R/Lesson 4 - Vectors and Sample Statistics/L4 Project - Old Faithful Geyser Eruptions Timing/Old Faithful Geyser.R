# Old Faithful Geyser
# 
# The eruption times for Old Faithful are clustered into two different groups. 
# One group is short eruptions, and the other group is long eruptions. Short 
# eruptions last three minutes or less, while long eruptions last more than 
# three minutes. As below, define the vector e.times as:
#   
#   e.times <- faithful$eruptions
#   
# Split the vector e.times into two vectors: a vector short that contains 
# the times less than or equal to three minutes, and a vector long that 
# contains the times greater than three minutes. Answer the given questions.
    
    
library(datasets)
faithful

e.times <- faithful$eruptions
summary(e.times)

short <- e.times[e.times <= 3]
print(short)
length(short)
mean(short)
sd(short)

long <- e.times[e.times >= 3]
print(long)
length(long)
mean(long)
sd(long)
