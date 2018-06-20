require 'pry'
require './lib/artist.rb'
require './lib/song.rb'
class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    file_list = Dir.entries(self.path).select{|file| file.include?(".mp3")}
  end
  
  def import 
    self.files.each{|file| Song.new_by_filename(file)}
  end
  binding.pry
end