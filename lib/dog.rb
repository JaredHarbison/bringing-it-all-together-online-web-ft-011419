class Dog 
  attr_reader :id 
  attr_accessor :name, :breed 
  
  def initialize(id = nil, name: name, breed: breed)
    @id = id 
    @name = name 
    @breed = breed 
  end 
  
end 
