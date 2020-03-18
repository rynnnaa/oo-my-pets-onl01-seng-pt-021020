class Cat
  
  @@all = []
  
  attr_accessor :owner, :mood
  attr_reader :name, :mood
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
  end
  
  def self.all
    @all
  end

end
