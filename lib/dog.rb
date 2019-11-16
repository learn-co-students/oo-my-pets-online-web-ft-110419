class Dog
  attr_accessor :mood
  attr_reader :name, :owner
  @@all = []
  
  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def owner=(new_owner)
    @owner = new_owner
  end
  
  def self.all 
    @@all
  end
  
end