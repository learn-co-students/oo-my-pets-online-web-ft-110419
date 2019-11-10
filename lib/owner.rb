class Owner
  attr_reader :name, :species
  
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.count
    return @@count
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
  def self.all
    return @@all
  end
  
  def cats
    return Cat.all.select { |cat| cat.owner == self }
  end
  
  def dogs
    return Dog.all.select { |dog| dog.owner == self }
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
  def list_pets
    return "I have #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end
end
