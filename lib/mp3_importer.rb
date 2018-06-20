class MP3Importer
  
  def initialize(file_path)
    @file_path = file_path
  end
  
  def files
    file_list = Dir.entries(self.file_path)
  end
end