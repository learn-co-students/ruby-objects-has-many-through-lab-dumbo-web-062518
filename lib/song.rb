class Song
  @@songs = []

  attr_accessor :artist
  attr_reader :genre

  def initialize(title, artist, genre)
    @title = title
    @genre = genre
    @artist = artist
    @@songs << self
  end

  def self.all
    @@songs
  end

  def self.all=(song)
    @@songs << (song)
  end
end
