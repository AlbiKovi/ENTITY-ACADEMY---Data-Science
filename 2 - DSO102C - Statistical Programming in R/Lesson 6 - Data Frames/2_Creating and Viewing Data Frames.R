# Creating and Viewing Data Frames

Name <- c("Bob", "Nancy", "Cyrus", "Jackie")
Age <- c(36, 31, 26, 34)
Dominant_Hand <- c("Right", "Right", "Left", "Right")
friends <- data.frame(Name, Age, Dominant_Hand)

#View data frame
View(friends)

#View in console
friends

#View data in each column
friends$Name
friends$Age
friends$Dominant_Hand

#Accessing individual elements of data frame
friends[3,2]

#Adding columnts to data frame
friends$Shoe_Size <- c(10,8,14,9)
friends