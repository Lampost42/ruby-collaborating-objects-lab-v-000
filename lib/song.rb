class Song 
  attr_accessor :artist, :name
  def initialize(name)
    @name = name
  end
  def artist_name=(artist_name)
    if self.artist.nil?
      self.artist = Artist.find_or_create_by_name(artist_name)
    end
  end
  def self.new_by_filename(filename)
    file = filename.split(" - ")
    name = file[1]
    song = self.new(name)
    song.artist_name = file[0]
    song.artist.songs << song
    song
  end
end