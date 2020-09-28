class Artist 
  attr_accessor :name, :songs
  
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
<<<<<<< HEAD
    save
=======
    @all << self
>>>>>>> 4978db4d1997df3a90b53f74dbc50c42c0db2047
  end

  def add_song(song)
    @songs << song
  end

<<<<<<< HEAD
  def self.all
    @@all 
  end

  def save
    @@all << self 
  end
  
  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name) 
=======
  def save
    @@all << self 
  end

  def self.all
    @@all 
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
>>>>>>> 4978db4d1997df3a90b53f74dbc50c42c0db2047
    end
  end

  def print_songs
     @songs.each do |song|
      puts song.name
    end
  end
end