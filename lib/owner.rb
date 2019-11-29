require "pry"
class Owner
  @@all = []
  attr_reader:species
  attr_reader:name 
  # code goes here
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    #binding.pry
  end
    def say_species
        "I am a #{@species}."
    end
     def self.all
        @@all 
        #binding.pry
     end
     def self.count
       @@all.size 
        
     end
     def self.reset_all
       @@all.clear
     end
     def cats
        Cat.all.select { |cat| cat.owner == self } 
     end
     def dogs 
        Dog.all.select { |dog| dog.owner == self }
     end
     def buy_cat(cat_name)
       cat = Cat.new(cat_name, self)
     end
     def buy_dog(dog_name)
       dog = Dog.new(dog_name, self)
    end
     def walk_dogs
      self.dogs.each { |dog| dog.mood = "happy" }
     end
     def feed_cats
       self.cats.each { |cat| cat.mood = "happy" }
     end
     def sell_pets
      self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
      end
      self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
     end
     def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end
     
end