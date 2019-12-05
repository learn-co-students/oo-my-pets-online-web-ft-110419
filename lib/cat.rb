class Cat

  attr_reader  :name
  attr_accessor :owner, :mood 
  
  CATS = []

  def initialize(name,owner)
    @name = name
    @owner =  owner 
    @mood = "nervous"
    CATS << self 
  end

  def self.all 
    CATS
  end 





end 
