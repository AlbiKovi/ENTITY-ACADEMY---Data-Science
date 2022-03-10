#Vector Creation


#Sleep hours from 6 to 12 hours a night, increment by 0.5 hours.
sleep_hours3 <- seq(6, 12, by = 0.5)
print(sleep_hours3)

#Sleep hours from 6 to 12 hours a night, increment by 0.75 hours.
#8 numbers, evenly spaced by 0.75 hour.
sleep_hours4 <- seq(6, 12, length.out = 9)
print(sleep_hours4)
#Cannot use by= and length.out= arguments simultaneously.
#Only one argument at a time.

#Subsetting: Pulling individual elements from a vector
sleep_hours = c(7, 4, 8, 9, 5, 11)
sleep_hours5 <- sleep_hours[1]
print(sleep_hours5)