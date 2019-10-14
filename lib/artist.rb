class Artist 
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_song(name, genre)
    return Song.new(name, self, genre)
  end
  
  def songs 
    Song.all.select |song|
      song.artist == self
    end
  end
end