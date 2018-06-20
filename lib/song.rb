class Song 
  attr_accessor :artist, :name
  
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end
  
  def artist=(artist)
    
  
end