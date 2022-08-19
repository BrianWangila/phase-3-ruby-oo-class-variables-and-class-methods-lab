

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre       #push each genre to empty array
    @@artists << artist       #push each artist to empty element

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq         #remove duplicate elements
    #@@genres.tally   #returns a hash collection of elements
  end

  def self.artists
    @@artists.uniq        #remove duplicate elements
    # @@artists.tally
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count

  end

end

song1 = Song.new("99 Problems", "Jay-Z", "rap")
song2 = Song.new("Forever Young", "M.J", "pop")
song3 = Song.new("Rewrite the stars", "Anna Marie", "RnB")
song4 = Song.new("Rewrite the stars", "Anna Marie", "RnB")
song5 = Song.new("Forever Young", "M.J", "rap")
song6 = Song.new("Rewrite the stars", "Anna Marie", "pop")


puts Song.count
pp Song.genres
pp Song.artists
pp Song.genre_count
pp Song.artist_count