class Cat
attr_accessor :owner, :mood #can change its owner   #can change its mood
attr_reader :name #can't change its name
 @@all = []
  
 def initialize (name, owner)#initializes with a name and an Owner
  @name = name
  @owner = owner
  @mood =  "nervous" 
  #initializes with a nervous mood
  @@all << self
end  

#Class methods
#knows all the cats
  
def self.all
  @@all
end

    
end