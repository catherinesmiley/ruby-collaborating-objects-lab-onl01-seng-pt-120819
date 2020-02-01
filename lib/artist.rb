# class Artist 
  
#   attr_accessor :name
  
#   @@all = []
  
#   def initialize(name)
#     @name = name 
#     save
#   end
  
#   def self.all 
#     @@all 
#   end
  
#   def songs 
#     Song.all.select {|song| song.artist == self}
#   end 
  
#   def add_song(song)
#     song.artist = self 
#   end 
  
#   def save 
#     @@all << self 
#   end 
  
#   def self.find_or_create_by_name(name)
#     existing_artist = self.all.find {|artist| artist.name == name}
#     if existing_artist
#       existing_artist
#     else 
#       new_artist = self.new(name)
#       new_artist
#     end
#   end 
  
#   def print_songs 
#     songs.each {|song| puts song.name}
#   end 
  
# end


























require 'pry'

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def songs
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def find(name)
    self.all.find {|artist| artist.name == name}
  end 
  
  def find_or_create_by_name(name)
    find(name) || self.new(name)
  end 
  
  def print_songs
    songs.each {|song| puts song.name}
  end 
  
end 