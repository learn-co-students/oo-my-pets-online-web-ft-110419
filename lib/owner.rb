class Owner
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat
    Cat.new = self.name
  end
  
  def buy_dog
    
  end
  
  def walk_dogs
    self.dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets(pets)
    self.each do |pets|
      if pet.owner == "nervous"
        
  end
  
  
  
  
end