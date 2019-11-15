class Cat
  attr_accessor :mood
  attr_reader :name, :owner
  
  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
  end
  
  def owner=(new_owner)
    @owner = new_owner
  end
end