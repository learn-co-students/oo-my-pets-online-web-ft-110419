class Owner
  class Owner
  attr_reader :species
  attr_accessor :name, :pets, :dog, :cat

  @@all = []
  @@pets = {:dogs => [], :cats => []}

  def initialize(species)
    @species = species
    @name = name
    @@all << self
  end

  
end
