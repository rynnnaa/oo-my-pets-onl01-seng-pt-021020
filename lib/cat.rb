class Cat
  
  @@all = []
  
  attr_accessor :owner, :mood
  attr_reader :name, :mood
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

end
