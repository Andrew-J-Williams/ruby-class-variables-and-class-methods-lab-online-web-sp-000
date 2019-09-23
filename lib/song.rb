class Song

  attr_accessor :name, :artist, :genre # Our instance variables, each with predefined 'set' and 'get' methods

  # Below are our 3 global variable
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    genre_numbers = []

    @@genres.each do |x|
      genre_numbers << x unless @@genres.any? {|name| name == @genre}
    end

    genre_numbers

  end

  def self.genre_count
    @@genres.count
  end

end
