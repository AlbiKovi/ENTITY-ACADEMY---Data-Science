# Lesson 5 - Displaying Qualitative Data

# Heat Maps in R
# In order to use the heatmap function, I must have your data formatted as 
# a matrix, and all of your data must be numeric.

# For this reason, I start by removing the date column from this data.
Forheatmap_stockdata1 <- Forheatmap_stockdata[,2:11]

# I convert the dataframe into a numeric matrix.
Forheatmap_stockdata2 <- as.matrix(Forheatmap_stockdata1)

# I run the heatmap() function on the matrix
heatmap(Forheatmap_stockdata2)



# Tree Maps in R
install.packages("treemap")
install.packages("scales")
library(treemap)
library(scales)
treemap(Fortreemap_datascience_posts, index=c("category"), vSize="views", type="index")
# index= argument to specify a vector of indices - in this case category.
# vSize determines that the number of views will determine the size of the boxes.
# Graph the index for your tree map, using the argument type= and specifying "index".


# Mosaic Plots in R
install.packages("vcd")
library(vcd)
unique(Formosaic_defects)

# To make use of the function mosaic(), I need to have my data formatted 
# as a table. 
# In order to do that, you will first use the attach() function.

# Before using the 'table' function, use the 'attach' function to begin formating data as a table.
attach(Formosaic_defects)

# Use 'table' function to format data into a table.
Formosaic_defects1 <- table(Region, Defect)
Formosaic_defects1

# Mosaic plot
mosaic(Formosaic_defects1, shade=TRUE, legend=TRUE)
