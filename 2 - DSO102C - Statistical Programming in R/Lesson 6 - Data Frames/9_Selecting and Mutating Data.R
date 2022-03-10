# Selecting and Mutating Data


library("dplyr")

Pets

# Previous variables
Pets1 <- filter(Pets, Animal == "Goat")
Pets2 <- filter(my_pets, Weight > 3)
Pets3 <- filter(Pets, Animal == "Goat", Age <= 2)
Pets4 <- filter(Pets, Weight %in% c("45", "35", "3.5"))
Pets5 <- filter(Pets, Animal %in% c("Goat", "Cat", "Guinea Pig"))
Pets6 <- filter(Pets, Animal != "Gold Fish")
Pets7 <- arrange(Pets, Weight)
Pets8 <- arrange(Pets, desc(Weight))
Pets9 <- Pets %>% filter(Animal == "Goat") %>% arrange(Weight)

Pets10 <- select(Pets, Name, Animal, Age)
Pets10

Pets11 <- mutate(Pets, Weight1 = Weight / 2.2)
Pets11

Pets12 <- mutate(Pets, Weight * 0.453592)
Pets12

Pets13 <- mutate(Pets, Status = "Alive")
Pets13