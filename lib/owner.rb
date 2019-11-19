require 'pry'
class Owner

  @@all = []

  attr_reader :name, :species  

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end

  def say_species
    "I am a #{@species}." 
  end

  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end

  def cats_ammount
    self.cats.count
  end

  def dogs_ammount
    self.dogs.count
  end

  def all_pets
    dogs + cats
  end
  
  def buy_cat(cat_to_buy)
    Cat.new(cat_to_buy, self)
  end
  
  def buy_dog(dog_to_buy)
    Dog.new(dog_to_buy, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = 'happy'}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = 'happy'}
  end

 def sell_pets
   pets = self.all_pets
   pets.each do |pet| 
     pet.mood = 'nervous'
     pet.owner = nil
   end
 end

 def list_pets
   "I have #{self.dogs_ammount} dog(s), and #{self.cats_ammount} cat(s)."
 end

end
