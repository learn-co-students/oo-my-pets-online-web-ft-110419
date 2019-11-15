class Dog
  attr_accessor :mood
  attr_reader :name, :owner
  @@all = []
  
  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = nervous
  end
  
  def self.all
    @@all
  end
  
  def owner=(new_owner)
    @owner = new_owner
  end
end