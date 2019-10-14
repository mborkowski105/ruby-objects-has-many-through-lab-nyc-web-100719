class Genre 
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_song(name, artist)
    return Song.new(name, artist, self)
  end
end