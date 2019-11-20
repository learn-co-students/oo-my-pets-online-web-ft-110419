require 'pry'

class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"

    self.class.all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
  end

  def feed_cats
    self.cats.each { |cat| cat.mood = "happy" }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def sell_pets
  
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end
end
