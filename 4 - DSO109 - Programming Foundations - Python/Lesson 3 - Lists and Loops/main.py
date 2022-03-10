for letter in "Sally":
  if letter == "l":
    break
  print("Current letter: " + letter)
print("The loop is over.")

#While loops practice
a_number = 1
while a_number <= 5:
    print(a_number)
    a_number += 1

#For loops Practice
numbers = [10, 25, 50]
doubled_numbers = []
for number in numbers:
    number *=2
    doubled_numbers.append(number)
    print(doubled_numbers)

numbers = [10, 25, 50]
doubled_numbers = []
for number in numbers:
    doubled_numbers.append(number * 2)
    print(doubled_numbers)

numbers = [10, 25, 50]
doubled_numbers = []
for number in numbers:
    doubled_numbers.append(number * 2)

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for number in list:
    number *=2
    print(number)

#Iteration Example
# 1. a list of numbers from 1-5
all_numbers = [1, 2, 3, 4, 5]
# 2. an empty list that will store even numbers
even_numbers = []
# 3. loop through `all_numbers` and add the even
# numbers to the `even_numbers` list
for the_number in all_numbers:
    # 4. if the number is even, add to `even_numbers`
    if the_number % 2 == 0:
        even_numbers.append(the_number)
    else:
        print("Ignoring the odd number: ", the_number)
# 5. print out `even_numbers`
print(even_numbers)

#Modifying lists example
the_range = range(5)
numbers = list(the_range)
print(numbers)

colors = ['green', 'white', 'green', 'yellw', 'yellw', 'white']
colors[3] = 'yellow'
colors[4] = 'yellow'
del colors[1]
del colors[5]
#colors.append('purple')
colors.insert(5, 'purple')
print(colors)

colors = ['red', 'white', 'blue']
colors.insert(1, 'green')
print(colors)
colors.insert(3, 'yellow')
print(colors)

my_list = [1, 2, 4]
my_list.insert(0, 'zero')
my_list.insert(3, 3)
print(my_list)

#Tuple Example
items = ("widget", ["white", "black", "brown"], 25)
print(items)

#List Example
my_message = "Split these words for me"
split_at_spaces = my_message.split()
print(split_at_spaces)

planets = ['Earth', 'Mars', 'Saturn', 'Venus']
print(planets)

planets = ['Earth', 'Mars', 'Saturn', 'Venus']
print(planets)

states = ['California', 'Texas', 'Florida', 'New York']

our_world = ['Earth', ['United States', 'Canada', 'Mexico'], [1, 2, 3]]
print(our_world)