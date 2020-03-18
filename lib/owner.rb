class Owner
  
  @@all = []

  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    return "I am a #{@species}."
    end
    
  def self.all 
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cat.all.select{|cat|cat.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dog|dog.owner == self}
  end
  
  def buy_cat(cat)
    Cat.new(cat, self)
  end
  
  def buy_dog(dog)
    Dog.new(dog, self)
  end
  
  def walk_dogs(dog)
    dog.mood = "happy"
  end
end