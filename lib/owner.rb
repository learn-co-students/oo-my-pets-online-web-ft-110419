require 'pry'
class Owner
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_cat(cat_name)
    # binding.pry
    # cat = Cat.all.find {|cat| cat.name == cat_name}
    # cat.owner = self 
    cat = Cat.new(cat_name,self)
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name,self)
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def walk_dogs
    self.dogs.map {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.map {|cat cat.mood = "happy"}
  end

  def sell_pets
    self.cats.map do |cat|
      cat.mood = "happy" 
      cat.owner = nil
    end
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@all.clear
  end
end
