require "pry"
class Owner
  attr_reader :name, :species 
  
    @@owner = []
  def initialize(name)
    # binding.pry
    @name = name
    @species = "human"
    @@owner << self
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all
    @@owner
  end 
  
  def self.count 
    @@owner.count
  end 
  
  def self.reset_all
    @@owner.clear
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end 
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end 
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats 
     self.cats.each {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
     my_pets = self.dogs + self.cats
     my_pets.each {|pet| pet.mood = "nervous" and pet.owner = nil}
  end 
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  
end