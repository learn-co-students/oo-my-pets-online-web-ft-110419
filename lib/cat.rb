class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@all=[]

  def initialize (name, owner)
    @name=name
    @owner=owner
    @mood= "nervous" #Cat Instance methods initializes with a nervous mood
    self.save
  end

  def mood #Cat Instance methods can change its mood
    return @mood
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
