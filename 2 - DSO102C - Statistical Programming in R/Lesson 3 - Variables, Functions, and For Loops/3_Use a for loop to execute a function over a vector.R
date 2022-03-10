#Pseudocode example
# for(page in book){read(page)}



#Print the numbers in the vector
for(number in sleep_hours){print(number)}



#Concatenate the numbers in the vector
for(number in sleep_hours){cat(number)}
for(number in sleep_hours){cat(number, "\n")}
# \n Is like pressing 'enter' to start a new line of code



#Use a for loop to execute a function over a vector
TsoToTbsp <- function(TsTb){(TsTb / 3)}

Tsp <- c(1,5,2,11,12)

for(number in Tsp){
  Tbsp <- TspToTbsp(number)
  cat(number, "Tsp is", Tbsp, "Tbsp", "\n")
}
