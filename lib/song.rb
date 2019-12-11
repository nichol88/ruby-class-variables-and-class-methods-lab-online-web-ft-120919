class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre

  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.collect
  end

  def self.artists
    @@artists.collect
  end
  
end
