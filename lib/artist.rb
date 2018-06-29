require 'pry'

class Artist
attr_accessor :name, :genre
attr_reader :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

#Class Methods
def self.all
@@all
end

#Instance Methods
def new_song(title, genre)
  Song.new(title, self, genre)
end

def songs
  Song.all.map do |song|
    song.artist == self
  end
end

def genres
  songs.map do |song|
    # binding.pry
    song.genre
  end
end

end

# Pry.start
