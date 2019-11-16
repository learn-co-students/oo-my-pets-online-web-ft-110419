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
    cat = Cat.all.find {|cat| cat.name == cat_name}
    cat.owner = self 
  end
  
  def cats 
    binding.pry
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
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
