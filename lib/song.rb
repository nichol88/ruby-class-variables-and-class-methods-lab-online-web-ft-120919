class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.collect
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    # => {"rap" => 5, "rock" => 1, "country" => 3}
  end

end
