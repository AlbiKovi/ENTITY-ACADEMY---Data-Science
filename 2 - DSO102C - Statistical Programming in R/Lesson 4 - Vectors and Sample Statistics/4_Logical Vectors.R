#Logical Vectors

sleep_hours = c(7, 4, 8, 9, 5, 11)

sleep_hours >= 8
#Logical variable which shows T/F for valuse in sleep_hours vector.

enough_sleep <- sleep_hours[sleep_hours >= 8]
#Only the values which meet the condition of >= 8 hours of sleep.
print(enough_sleep)

not_enough_sleep <- sleep_hours[sleep_hours < 8]
print(not_enough_sleep)
