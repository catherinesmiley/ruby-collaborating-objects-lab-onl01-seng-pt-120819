# require 'pry'

# class Song 
  
#   attr_accessor :artist, :name 
  
#   @@all = []
  
#   def initialize(name)
#     @name = name 
#     save 
#   end
  
#   def save 
#     @@all << self 
#   end 
  
#   def self.all 
#     @@all 
#   end 
  
#   def self.new_by_filename(file_name)
#     song = file_name.split(" - ")[1]
#     new_artist = file_name.split(" - ")[0]
#     new_song = self.new(song)
#     new_song.artist = Artist.new(new_artist)
#     new_song
#   end

#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#   end
  
# end






















require 'pry'

class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.new_by_filename(filename)
    song = filename.split(" - ")[1] 
    artist = filename.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist = Artist.new(artist) 
    new_song 
  end 
  
end 