class Cat
   @@all = []
  # code goes here
  attr_accessor:owner,:mood
  attr_reader:name
  def initialize(name,owner)
      @name = name
      @owner = owner
      @mood = "nervous"
      @@all << self
      #binding.pry
   end
    def self.all
       @@all
       #binding.pry
    end
end