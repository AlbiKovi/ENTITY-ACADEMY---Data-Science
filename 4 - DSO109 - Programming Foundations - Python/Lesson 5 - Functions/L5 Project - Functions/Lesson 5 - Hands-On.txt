# LESSON 5 - Hands-On

# Part 1
def sum_function(x, y, z):
    """ Returns the sum of all input numbers. """
    return x + y + z
def product_function(x, y, z):
    """ Returns the product of all input numbers. """
    return (x * y * z)
def average_function(x, y, z):
    """ Returns the average of all input numbers. """
    return (x + y + z)/3

print(sum_function(1,2,3))
print(product_function(4,5,6))    
print(average_function(7,8,9))


# Part 2
add_numbers = lambda x, y, z: x + y + z
multiply_numbers = lambda x, y, z: x * y * z
average_numbers = lambda x, y, z: (x+y+z)/3
print(add_numbers(1,2,3))
print(multiply_numbers(4,5,6))
print(average_numbers(7,8,9))


# Part 3
list_one = [4, 6, 88, 24]
list_two = [17, 34, 9, 5]
list_three = [63, 20, 98, 4]
average_maker = lambda x, y, z: (x+y+z)/3
map_results = map(average_maker, list_one, list_two, list_three)
list(map_results)
print(list(map_results))