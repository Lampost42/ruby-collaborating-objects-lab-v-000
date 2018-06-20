class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    file_list = Dir.entries(self.path).collect{|file| file.include?(/(.mp3)\b/)}
  end
end