require_relative "song.rb"

class Artist
  attr_accessor :songs
  attr_reader :name
  @@artists = []
  def initialize(name)
    @name = name
    @@artists << self
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def songs
    Song.all.select{ |song| song.artist == self}
  end

  def genres
    self.songs.map { |song| song.genre }
  end

  def self.all
    @@artists
  end
end
