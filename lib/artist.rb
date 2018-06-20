class Artist 
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  def add_songs(new_song)
    self.songs << new_song unless self.songs.include?(new_song)
  end
end