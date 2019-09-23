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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash_genres = {}

    @@genres.each do |uniq_genre|
      if hash_genres.include?(uniq_genre) == false
        hash_genres[uniq_genre]
      end

    end

  end

  def self.artist_count
    @@artists
  end

end
