class Owner
  # code goes here

  attr_reader :name, :species
  @@all = []
  
  def initialize(owner_name, species="human")
    @name = owner_name 
    @species = species 
    @cats = []
    @dogs = []
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def say_species
    return "I am a #{species}."
  end 
  
  def self.count
    @@all.size 
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  #CATS & DOGS
  
  def cats 
    Cat.all.find_all {|cat| cat.owner == self}
  end 
  
  def buy_cat(name)
    #update instance of Cat class with owner data
    Cat.new(name, self)
  end 
  
  def dogs 
    Dog.all.find_all {|dog| dog.owner == self}
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
    #take the instance of dog, go into Dog class, retrieve its method, change its mood to happy 
    #or rely on dogs method to get dogs, iterate over dogs, collect mood and then change it
    self.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets 
    self.cats.each {|cat| cat.mood = "nervous" ; cat.owner = nil }
    self.dogs.each {|dog| dog.mood = "nervous" ; dog.owner = nil } 
  end 
  
  def list_pets
    dogs_count = self.dogs.each {|dog| puts dog.name}.size 
    cats_count = self.cats.each {|cat| puts cat.name}.size
    return "I have #{dogs_count} dog(s), and #{cats_count} cat(s)."
    # "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."

  end 
  
end