require 'pry'
class Owner

  attr_accessor :cats, :dogs
  attr_reader  :name, :species

  @@all=[]

  def initialize(name)
    @name=name
    @species="human"
    self.save
  end

  def say_species #can say its species
    return "I am a #{@species}."
  end

  def self.all #.all returns all instances of Owner that have been created
    #this is a class method because self is at the beginning of the method definition
    #the keyword 'self' inside of a classmethod refers to the class
    #This means we can call Owener.all
    #We can call this method directly on the class
    @@all
  end

  def save #.all returns all instances of Owner that have been created
    @@all << self
  end

  def self.count #.count returns the number of owners that have been created
    return @@all.count
  end

  def self.reset_all #.reset_all can reset the owners that have been created
    @@all.clear
  end

  def cats  #cats returnsa a collection of all the cats that belong to the owner
   Cat.all.select {|cat|  cat.owner == self }
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def dogs
   Dog.all.select {|dog| dog.owner == self }
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def sell_pets
    #this an instance method because there is no self at the beginning of the method definition
    #Therefor, the keyword 'self' in an instance method refers to the instance it's called on
    #owner_instance.sell_pets
    #Not called on the class, but rather the instane

    #Get all owners pets and change their mood
    #What are out two pets? Dogs and cats
    #How do we get all our dogs for this instance of an owner?
    #self.dogs
    #How do we get all of the cats?
    #self.cats
    #Do we have to put them together?
    #no

    self.pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end

 end

 def pets
   pets = []
   pets << self.dogs
   pets << self.cats
   pets.flatten
 end

 def list_pets
  return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
 end
end
