class Dog
  
  attr_reader :name 
  attr_accessor :owner, :mood

  CONDOGS = []

  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    CONDOGS << self 
  end 

  def self.all
    CONDOGS
  end 

end