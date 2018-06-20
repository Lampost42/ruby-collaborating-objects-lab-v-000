class Artist 
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  def add_song(new_song)
    self.songs << new_song unless self.songs.include?(new_song)
  end
  def save
    @@all << self unless @@all.include?(self)
  end
  def self.all
    @@all
  end
end