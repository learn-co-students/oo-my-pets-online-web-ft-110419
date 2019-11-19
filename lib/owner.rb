require 'pry'
class Owner
  # code goes here
  @@all = []

  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = []

    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    dogs.collect { |dog| dog.mood = "happy" }
  end

  def feed_cats
    cats.collect { |cat| cat.mood = "happy" }
  end

  def all_pets
    @pets << dogs
    @pets << cats
  end

  def sell_pets
    dogs.collect { |dog| dog.mood = "nervous" }
    cats.collect { |cat| cat.mood = "nervous" }
    dogs.collect { |dog| dog.owner = nil }
    cats.collect { |cat| cat.owner = nil }
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end

end