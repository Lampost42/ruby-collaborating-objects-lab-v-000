class Song 
  attr_accessor :artist, :title
  
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
end