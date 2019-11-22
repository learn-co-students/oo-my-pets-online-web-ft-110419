require "pry"
class Owner
  # code goes here
@@all = []
  def initialize(name)
    @name=name
    @species = "human"
    @@all << self
  end
  def name
    @name
  end
  def species
    @species
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
  def buy_cat(cat)
  @cat =  Cat.new(cat,self)
  end
  def buy_dog(dog)
    @dog = Dog.new(dog,self)
  end
  def walk_dogs
      Dog.all.find {|dog| dog.owner == self}.mood = "happy"
  end
  def feed_cats
    Cat.all.find {|cat| cat.owner == self}.mood = "happy"
  end
  def sell_pets
    Dog.all.find {|dog| dog.owner == self}.mood = "nervous"
    Cat.all.find {|cat| cat.owner == self}.mood = "nervous"
    Dog.all.find {|dog| dog.owner == self}.owner = nil
    Cat.all.find {|cat| cat.owner == self}.owner = nil
  end
  def find_all(pets)
    pets.all.find_all {|dog| dog.owner == self}
  end
  def list_pets
    "I have #{find_all(Dog).count} dog(s), and #{find_all(Cat).count} cat(s)."
  end
end
