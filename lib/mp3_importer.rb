# class MP3Importer 
  
#   attr_accessor :path 
  
#   def initialize(path)
#     @path = path 
#   end 
  
#   def files 
#     Dir.entries(@path).grep(/.mp3/)
#   end 
  
#   def import
#     files.each {|filename| Song.new_by_filename(filename)}
#   end 
  
# end
























require 'pry'

class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    binding.pry 
    Dir.entries('./spec/fixtures')
  end 
  
  def import 
  end 

end 