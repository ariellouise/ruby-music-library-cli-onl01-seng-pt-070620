class Genre
  
  extend Concerns::Findable
  attr_accessor :name, :songs, :artists
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    save
  end 
  
  def self.all
    @@all 
  end 
  
  def self.destroy_all 
    @@all = [] 
  end 
  
  def save 
    @@all << self #create instance of a genre (self) is the genre
  end 
  
  def self.create(genre_name)
    self.new(genre_name)
  end 
  
  def artists 
    Artist.all.select {|artist| artist}
  end 
  
end 