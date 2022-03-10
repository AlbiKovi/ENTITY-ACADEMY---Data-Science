# Lesson 6 Hands-On

# Part 1
class Stadium:
    """This class models a stadium."""
    def __init__(self, name, city_state, capacity):
        """This is the initializer of the 'Stadium' class."""
        self.name = name
        self.city_state = city_state
        self.capacity = capacity

    def describe_stadium(self):
        """This method describes the arena."""
        print("The", self.name, "is located in", self.city_state, "and holds", self.capacity, "fans.")

Mercedes_Benz_Arena = Stadium("Mercedes Benz Arena", "Atlanta, GA", "70,000")

Mercedes_Benz_Arena.describe_stadium()


# Part 2
class Stadium:
    """This class models a stadium."""
    def __init__(self, name, city_state, capacity, sports, seats):
        """This is the initializer of the 'Stadium' class."""
        self.name = name
        self.city_state = city_state
        self.capacity = capacity
        self.sports = sports
        self.seats = seats

    def describe_stadium(self):
        """This method describes the arena."""
        print("The", self.name, "is located in", self.city_state, "and holds", self.capacity, "fans.")
    
    def sport_played(self):
        """This method specifies the sport that is played."""
        print("The following sport is mainly played in this stadium:", self.sports)
    
    def seats_available(self):
        """This method specifies the number of seats available."""
        print("There are", self.seats, "seats available for tonight's game.")
    

Mercedes_Benz_Arena = Stadium("Mercedes Benz Arena", "Atlanta, GA", "70,000", "Football", "1500")
    
Mercedes_Benz_Arena.describe_stadium()
Mercedes_Benz_Arena.sport_played()
Mercedes_Benz_Arena.seats_available()
