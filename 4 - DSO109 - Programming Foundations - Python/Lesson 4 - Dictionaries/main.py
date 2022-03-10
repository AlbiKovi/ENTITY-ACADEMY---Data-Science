# Given the people dictionary in the activity.py file, 
# iterate over each person and create a welcome message for each.
# Each item of the people dictionary is another dictionary with key-value pairs for name and city.
# Create a list named greetings that contains a greeting for each person in the dictionary. The format of the greeting should be:
# "Hello {NAME} from {CITY}"
# where {NAME} and {CITY} are replaced with each person's corresponding dictionary values.

people = {
    'person1': {
        'name': 'Sally Sue',
        'city': 'Phoenix'
    },
    'person2': {
        'name': 'Billy Bob',
        'city': 'Scottsdale'
    },
    'person3': {
        'name': 'Rover',
        'city': 'Zappa'
    }
}
greetings = []
for person in people.values():
    greeting = "Hello " + person['name'] + " from " + person['city']
    greetings.append(greeting)
    print(greetings)


user = {'name': 'Andrew', 'email': 'andrew@email.com', 'username': 'andrewUser'}
for key in user.keys():
    print("Key =", key, "\tValue =", user[key])

# Output Dictionary Keys Only, Example 5
contact = {'name': 'Andrew', 'occupation': 'Software Engineer'}
print("Name : ", contact.get('name'))
print("Occupation : ", contact.get('occupation'))

# Output Dictionary Keys Only, Example 4
student = {'name': 'Andrew', 'program': 'Software Development', 'id': 110272}
the_keys = student.keys()
print(the_keys)

# Accessing Dictionary Keys, Example 3
person = {'name': 'Andrew', 'age': 29, 'city': 'Scottsdale', 'state': 'AZ'}
print(person['name'])
print(person['age'])

# Dictionaries, Example 2
dictionary = dict([(1, 'John'), (2, 'Andrew')])
print(dictionary)

# Dictionaries, Example 1
new_dict = dict(name='john', age=19, hometown='Phoenix')
print(new_dict)