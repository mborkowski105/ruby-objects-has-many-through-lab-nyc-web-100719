class Patient 
  @@all = [] 
  
  attr_reader :name 
  
  def initialize(name)
    @name = name
  end
  
  def self.all 
    return @@all
  end
end