class Owner
  #attr_accessor :name, :species
  attr_reader :name, :species, :cats, :dogs
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  def buy_cat(cat)
    c = Cat.new(cat,self)
  end

  def buy_dog(dog)
    d = Dog.new(dog,self)
  end

  def walk_dogs
    @dogs.each { |dog| dog.mood = "happy"}
end

  def feed_cats
    @cats.each { |cat| cat.mood = "happy"}
  end

  def sell_pets
    @cats.each {|cat|
      cat.mood = "nervous"
      cat.owner = nil }
    @dogs.each {|dog|
      dog.mood = "nervous"
      dog.owner = nil }
      @cats.clear
      @dogs.clear
  end

  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end

  def cats
    @cats
  end

  def dogs
    @dogs
  end

  def say_species
   "I am a " << @species << "."
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

end #end of class
