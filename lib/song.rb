class Song 
  attr_accessor :artist, :name
  def initialize(name)
    @name = name
  end
  def artist_name=(artist_name)
    if self.artist.nil?
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = artist_name
  def self.new_by_filename(filename)
    file = filename.split(" - ")
    name = file[1]
    song = self.new(name)
    song.artist = file[0]
    song
  end
end