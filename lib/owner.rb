class Owner
 attr_reader :name
 attr_accessor :human, :cat

 @@all = []
 @@cats = []
 

     def initialize (name)
  @name = name
  @@all << self
 end
 def species
    @species = "human"
 end

 def say_species
    @say_species = "I am a human."
 end   
  #species
  #initializes with species set to human
  #can't change its species
      #say_species
      #can say its species


      #Class methods
      #.all returns all instances of Owner that have been created
      #.count returns the number of owners that have been created
      #.reset_all can reset the owners that have been created
 def self.all
    @@all
 end

 def self.count
   @@all.size
 end

 def self.reset_all
    @@all.clear
 end


def cats
    Cat.all.find_all do |cat|
    cat.owner == self
   end
end

#dogs
#returnsa a collection of all the dogs that belong to the owner 

def dogs
Dog.all.find_all do |dog|
   dog.owner == self
end

end

#buy_cat
#can buy a cat that is an instance of the Cat class

def buy_cat(name)
   new_cat = Cat.new(name, self)
end   

#buy_dog
#can buy a dog that is an instance of the Dog class
def buy_dog(dog_name)
   new_dog = Dog.new(dog_name, self)
end

 #walk_dogs
 #walks the dogs which makes the dogs' moods happy
def walk_dogs
   dogs.each do |dog|
      dog.mood = "happy"
   end
end

  #feed_cats
  #feeds cats which makes the cats' moods happy 

  def feed_cats
   cats.each do |cat|
      cat.mood = "happy"
   end
  end 
 #sell_pets
 #can sell all its pets, which makes them nervous
 def sell_pets
  cats.each do |pet|
   pet.mood = "nervous"
   pet.owner = nil
  end
  dogs.each do |pet|
   pet.mood = "nervous"
   pet.owner = nil
  end
 

 end

  #list_pets
  #can list off its pets 

  

  def list_pets
   @owner.dogs.count
   @owner.cats.count
 end 
 
 def list_pets
   num_dogs = @pets[:dogs].size
   num_cats = @pets[:cats].size

   return " #{num_dogs} dog(s), and #{num_cats} cat(s)."
 end
end 



    