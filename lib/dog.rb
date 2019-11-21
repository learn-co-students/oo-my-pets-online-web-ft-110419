class Dog
  attr_accessor :owner, :mood
  attr_reader :name
@@all = []
  def initialize (name, owner)
  @name = name
  @owner = owner
  @mood = "nervous"
  @@all << self
  # code goes here
end
def mood
  @mood 
end



def self.all
  @@all.include?(@dog)
  @@all
end


end

