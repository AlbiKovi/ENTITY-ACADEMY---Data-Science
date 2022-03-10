#Vector Arithmetic and Functions

sleep_hours = c(7, 4, 8, 9, 5, 11)
sleep_hours2 <- 6:10
sleep_hours3 <- seq(6, 12, by = 0.5)
sleep_hours3. <- 10:6
sleep_hours4 <- seq(6, 12, length.out = 9)
sleep_hours5 <- sleep_hours[1]
sleep_hours7 <- sleep_hours / 2

bed_hours <- c(8, 9, 7, 8, 10, 7, 12)
print(bed_hours)

sleep_efficiency <- sleep_hours / bed_hours * 100
print(sleep_efficiency)
# Warning message:
#   In sleep_hours/bed_hours :
#   longer object length is not a multiple of shorter object length.
# ALWAYS spot check data for mistakes like this.
# ALWAYS investigate warnings.