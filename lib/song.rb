class Song 
  attr_accessor :artist, :name
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end
  
  def artist=(name)
    @artist = Artist.name
  end
  
end