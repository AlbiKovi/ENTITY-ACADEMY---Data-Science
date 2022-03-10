# Example 1: Creating Functions
def greeting():
    """This function prints a greeting"""
    print("Hello!")
greeting()

# Example 2 & 3: Providing Data to Functions
def increment(value):
    """This function increments a value"""
    print("Old value =", value)
    value += 1
    print("New value =", value)
increment(10)

def increment(value, step_size):
    """This function increments a value"""
    print("Old value =", value)
    value += step_size
    print("New value =", value)
increment(10, 5)

# Example 4: Returning Data From Functions
def increment(value, step_size=1):
    """This function increments a value"""
    return value + step_size

new_value = increment(5, 3)
print("The new value is", new_value)

print(increment(5, 3))

# Example 5: Returning Data From Functions
def greeting():
    """This function prints a greeting"""
    print("Hello!")
print(greeting())

# Example 6: Returning Data From Functions
def get_average(x, y, z):
    return (x + y + z)/3

# Example 7: Returning Data From Functions
count = 0
data_list = [1, 2, 3, 4, 5]
def get_count(data_list, update_count = False):
    if update_count:
        count = len(data_list)
    return len(data_list)
print(get_count(data_list, update_count = False))
print(count)

# Example 8: Function
li = [1, 2, 4, 5, 6, 7, 8, 9, 10]
def func(x):
    return x**x
print(func(5))

# Example 9: Input results into a list
li = [1, 2, 4, 5, 6, 7, 8, 9, 10]
newList = []
def func(x):
    return x**x
for x in li:
    newList.append(func(x))
print(newList)

# Example 10: Lambda function
li = [1, 2, 4, 5, 6, 7, 8, 9, 10]
newList = []
f = lambda x: x**x

# 1. the list of numbers
numbers = [1, 2, 3, 4, 5]

# 2. the lambda function to return True only if the value is even
is_even = lambda x: x % 2 == 0

# 3. call `filter` using the `is_even` lambda function and the list `numbers`
filter_results = filter(is_even, numbers)

# 4. `filter` returns a special type of data like `map`, but it can be converted
# to a list using the `list` function
results = list(filter_results)

# 5. Lambda function over nested list
numbers = [[1,2,3],[4,5,6]]
fn_average = lambda x: sum(x)/len(x)
averages = map(fn_average, numbers)
list(averages)

# 6. Lambda function to multiply two lists together
list_a = [4, 6, 8]
list_b = [3, 3, 1]
newlist = [list_a, list_b]
products = map(lambda x: list_a[x] * list_b[x], newlist)
print(list(products))



