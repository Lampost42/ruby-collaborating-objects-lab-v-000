require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    file_list = Dir.entries(self.path)
  end
    binding.pry
end