# Creating and Viewing Data Frames


# Create a vector for every single column in data frame.

Snowman_Name <- c("Forsty", "Frostette", "Jack Frost", "Jackie Frost", "Coal Eye")
#Enclose string data in quotes

Accessory <- c("Top Hat", "Scarf", "Coal Buttons", "Twig Arms", "Carrot Nose")

Location <- c("South Dakota", "North Dakota", "Colorado", "Minnesota", "Alaska")

Body_Sections <- c(3, 4, 2, 3, 2)

Snowmen <- data.frame(Snowman_Name, Accessory, Location, Body_Sections)

#First 6 rows of data frame
head(Snowmen)

#Last 6 rows of data frame
tail(Snowmen)

#Entire data frame in console
Snowmen

#Entire data frame in new window
View(Snowmen)

#Subsetting: View accessories
Snowmen$Accessory

#Subsetting: Only Row 3 of my data
Snowmen[3,]
# Only examining a row, so no column number needed

#Only the accessory for Jack Frost
Snowmen[3,2]

#Add more columns to dataframe
Snowmen$Gender <- c("Male" , "Female" , "Male" , "Female" , "Male")
View(Snowmen)