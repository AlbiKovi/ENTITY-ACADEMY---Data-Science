#Importing CSV Data

#Any punctuation can be used to separate the rows of my data as long as
#delimiters / separators are specified.
#CSV - Comma Separated Value
#txt files usually separated by tabs

#Save excel data as .csv file
#For CSV: Import From Text(base)...

View(PetsCSV)
#Always display headings

Pets <- read.csv("PetsCSV.csv")

#Subsetting
Pets$Name