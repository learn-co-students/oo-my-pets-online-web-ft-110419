class Owner
  attr_reader :name, :species
  @@owners = []
  def initialize(name)
    @name = name
    @species = human
    @@owners << self
  end
  
  def says_species
    puts "I am a #{@species}."
  end
  
  def self.all 
    @@owners
  end
  
  def self.count
    @@owners.length 
  end
  # code goes here
end