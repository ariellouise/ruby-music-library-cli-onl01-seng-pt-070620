class Artist
  
  extend Concerns::Findable
  attr_accessor :name, :songs, :genres
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = [] #property
    save
  end 
  
  def self.all
    @@all 
  end 
  
  def self.destroy_all 
    @@all.clear 
  end 
  
  def save 
    @@all << self #create instance of a artist (self) is the artist
  end 
  
  def self.create(artist)
    self.new(artist)
  end 
  
  def add_song(song)
    song.artist = self if song.artist == nil 
    @songs << song if !@songs.include?(song) 
  end 
  
  def genres 
    Genre.all.select {|gen| gen} 
  end 
  
end 