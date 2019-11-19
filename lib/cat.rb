class Cat

  @@all = []

  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    self.owner = owner 
    self.mood = 'nervous'
    @@all << self
  end

  def self.all
    @@all
  end 

  def buy_cat
    
  end

end
