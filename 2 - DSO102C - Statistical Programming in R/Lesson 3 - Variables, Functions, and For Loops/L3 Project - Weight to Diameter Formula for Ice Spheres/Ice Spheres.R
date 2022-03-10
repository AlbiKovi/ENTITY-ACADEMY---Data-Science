#Ice Spheres

# Premier restaurants and bars are now serving drinks with ice spheres rather 
# than ice cubes to chill the drink. Suppose you work for an ice vendor, and are 
# tasked with measuring the size of manufactured ice spheres. Rather than 
# measure the diameter directly, you weigh each sphere. You consulted with your 
# company's ice scientist, and they gave you the following formula to convert 
# the ice sphere's weight in grams to its diameter in inches (assuming it is 
# weighed at 0 degrees Fahrenheit and is perfectly spherical); d is the sphere's 
# diameter, and w is the sphere's weight.

# Create a function called diam() that computes the diameter of the sphere 
# from its argument. Create a for loop that will use your diam() function to 
# compute the diameters of spheres with the following weights in grams: 0.96, 
# 1.51, 2.17, 3.85, 4.45, and 6.02.



#Weight (grams) to diameter (inches)
d = function(diam){
  (2/2.54) * ((w / (0.92 * (4/3) * pi)) ^ (1/3))
  }

#Weights in grams stored in vector 'w'
w = c(0.96, 1.51, 2.17, 3.85, 4.45, 6.02)

#In order for the 'for' loop to iterate over the vector w, the initial element
# must be zero.
count = 0

#For loop iterates over vector w containing weights of ice
for(i in w){
  w2d = d(i)
}

print(w)
print(w2d)



#Example Code
# TsoToTbsp <- function(TsTb){(TsTb / 3)}
# 
# Tsp <- c(1,5,2,11,12)
# 
# for(number in Tsp){
#   Tbsp <- TspToTbsp(number)
#   cat(number, "Tsp is", Tbsp, "Tbsp", "\n")
# }

#Attempt 1
# for(i in w){
#   w2d = d(i)
#   (i, "weighs", w, "grams", "\n")
# }

#Attempt 2
#count = 0
# for(ii in w2d){
#   print(w[count])
#   #print(ii)
#   count = count + 1
#   if count = 5
# }
