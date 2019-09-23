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
    @@artists.uniq # The dot method 'uniq' searches through our array and returns only unique values with no duplicates.
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash_genres = {} # First, we create a new hash that is empty

    @@genres.each do |uniq_genre| # We iterate through our array and check each value
      if hash_genres[uniq_genre]
        hash_genres[uniq_genre] += 1
      else
        hash_genres[uniq_genre] = 1
      end
    end
    hash_genres
  end

  def self.artist_count
    hash_artists = {}

    @@artists.each do |uniq_artist|
      if hash_artists[uniq_artist]
        hash_artists[uniq_artist] += 1
      else
        hash_artists[uniq_artist] = 1
      end
    end
    hash_artists
  end

end
