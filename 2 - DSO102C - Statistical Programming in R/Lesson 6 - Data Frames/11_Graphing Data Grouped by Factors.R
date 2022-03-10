# Graphing Data Grouped by Factors


library("dplyr")

View(Pets)

#Previous variables
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
Pets11 <- mutate(Pets, Weight1 = Weight / 2.2)
Pets12 <- mutate(Pets, Weight1 = Weight * 0.453592)
Pets13 <- mutate(Pets, Status = "Alive")
Pets14 <- group_by(Pets, Animal)
MeanWeight1 <- summarize(Pets, mean = mean(Weight))
MeanWeight2 <- Pets %>% group_by(Animal) %>% summarize(w = mean(Weight))
CountPets <- Pets %>% group_by(Animal, Age, Weight) %>% summarize(Count = n())


ggplot(Pets, aes(x= Animal, y = Weight)) + geom_boxplot(aes(group = Animal))
# x-axis is categorical variable
# y-axis is continuous variable