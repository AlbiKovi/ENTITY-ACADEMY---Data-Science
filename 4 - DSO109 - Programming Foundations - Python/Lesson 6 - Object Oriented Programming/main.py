# Lesson 6 Practice


# Example 1: Built-in classes
x = 9
print(type(x))

x = 5.5
print(type(x))

a = '8'


# Example 2: Creating new classes
print(type(a))class Computer:
    def config(self):
        print("i5, 16gb, 1TB")

com1 = Computer()
print(type(com1))


# Example 3:
class Rectangle:
  def __init__(self, width, height):
    self.width = width
    self.height = height
  def area(self):
    return self.width*self.height


# Example 4:
class Greeter:
    """This is a greeter."""
    @staticmethod
    def greet(people):
        """Static method to greet a lsit of people."""
        greetings = []
        for person in people:
            greeting = "Hello" + person.firstName + " " + person.lastName + "!"
            greetings.append(greeting)

# class Greeter:
    # def __init__(self, firstName, lastName, people):
        self.firstName = firstName
        self.lastName = lastName
        self.people = []
    # @staticmethod
    # def add_person(self, person):
        for person in Greeter.people:
            Greeter.people.append(person)
    # @staticmethod
    # def greet(self,people):
        for person in Greeter.people:
            print("Hello", self.firstName, self.lastName, "!")
        
# Bill = Greeter("Bill", "Barnes")
# Sally = Greeter("Sally", "Smith")

# Greeter.add_person(Bill)
# Greeter.add_person(Sally)

# Bill.greet(people)
# Sally.greet(people)

