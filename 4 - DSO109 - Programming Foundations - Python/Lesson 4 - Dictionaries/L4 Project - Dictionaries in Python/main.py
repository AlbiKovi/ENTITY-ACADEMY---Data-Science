# Lesson 4 Hands-On


#Part 1
from typing import cast

Leonard = {
    "Type": "Cat",
    "Color": "Black & White",
    "Nickname": "Lenny",
    "Owner": "Ewa & Jan"
}
print(Leonard)

Misha = {
    "Type": "Cat",
    "Color": "Black & Brown",
    "Nickname": "Mishka",
    "Owner": "Basia & Everett"
}
print(Misha)

for key,value in Leonard.items():
    print(key,":",value)

for key,value in Misha.items():
    print(key,":", value)


# Part 2
bulgaria = {"Capital": "Sofia"}
spain = {"Capital": "Madrid"}
denmark = {"Capital": "Copenhagen"}
england = {"Capital": "London"}
france = {"Capital": "Paris"}
belgium = {"Capital": "Brussels"}

bulgaria["population in millions"] = 7
spain["population in millions"] = 46.94
denmark["population in millions"] = 5.81
england["population in millions"] = 53.01
france["population in millions"] = 66.9
belgium["population in millions"] = 11.35

bulgaria["interesting fact"] = "Bulgarian roses are used to make French perfumes."
spain["interesting fact"] = "Spanish people discovered oranges and chocolate."
denmark["interesting fact"] = "Denmark is considered the happiest country in the world."
england["interesting fact"] = "Sparkling wine was invented in England."
france["interesting fact"] = "French people invented the hot air balloon."
belgium["interesting fact"] = "Belgians invented french fries and eat them with mayo."

bulgaria["top language"] = "Bulgarian"
spain["top language"] = "Spanish"
denmark["top language"] = "Danish"
england["top language"] = "English"
france["top language"] = "French"
belgium["top language"] = "Dutch (and others)"

print(bulgaria)
print(spain)
print(denmark)
print(england)
print(france)
print(belgium)

for key,value in bulgaria.items():
    print(key,":", value)
for key,value in spain.items():
    print(key,":", value)
for key,value in denmark.items():
    print(key,":", value)
for key,value in england.items():
    print(key,":", value)
for key,value in france.items():
    print(key,":", value)
for key,value in belgium.items():
    print(key,":", value)


# Part 3
pizza_order = {
    "Customer's name": "Albi",
    "Pizza size": "12 inch",
    "Crust type": "thin-crust",
    "Toppings": "peperoni, mushroom, onion, olives, green pepper, tomato, garlic, and basil"
}
print(pizza_order)

print(
    "Thank you for your order, " + 
     pizza_order.get("Customer's name") + 
     "\nYou have ordered a " + pizza_order.get("Pizza size") + 
     ", " + pizza_order.get("Crust type") + 
    " pizza with the following toppings:" + 
    "\npeperoni, mushroom, onion, olives, green pepper, tomato, garlic, and basil"
    )