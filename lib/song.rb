class Song 
  attr_accessor :artist, :name
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    song = self.new(name)
    song
  end
end