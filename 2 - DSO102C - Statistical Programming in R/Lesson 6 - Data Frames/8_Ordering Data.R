# Ordering Data


library("dplyr")

Pets

# Previous variables
Pets1 <- filter(Pets, Animal == "Goat")
Pets2 <- filter(my_pets, Weight > 3)
Pets3 <- filter(Pets, Animal == "Goat", Age <= 2)
# %in% looks for anything in the vector criteria specified.
Pets4 <- filter(Pets, Weight %in% c("45", "35", "3.5"))
Pets5 <- filter(Pets, Animal %in% c("Goat", "Cat", "Guinea Pig"))
# Everything that is not a gold fish.
Pets6 <- filter(Pets, Animal != "Gold Fish")

#Asceding Order
Pets7 <- arrange(Pets, Weight)
Pets7

#Desceding Order
Pets8 <- arrange(Pets, desc(Weight))
Pets8

#Simultaneously filter and arrange
Pets9 <- Pets %>% filter(Animal == "Goat") %>% arrange(Weight)
Pets9
# %>% means 'and then'