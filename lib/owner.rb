class Owner
  
  attr_accessor 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self   
  end
  
  def self.all
    @@all
  end 
  
  def say_species
    return "I am a #{@species}."  # equals "I am a human."
  end 
  
  def self.count
    @@all.length
  end
  
end

# an owner will know about all their pets 
# an owner will be able to buy a pet 
# an owner will change a pet's mood through walking/feeding
# an owner will sell all of their pets 

# an owner should be able to buy and sell a pet, which will change the pet's mood

# when an owner buys a new pet, the buy_cat/buy_dog methods take in an argument of a name -- must take that name and do the following:
  # make a new instance of the appropriate pet, initializing it with that name and the owner who is purchasing it 
  
# an owner should have the ability to walk all their dogs or feed all their cats, which will change the mood of all their pets of that type to "happy"