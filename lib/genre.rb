class Genre

attr_accessor :name

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
def new_song(name, artist)
  Song.new(name, artist, self)
end

def songs
  Song.all.map do |song|
    song.genre == self
    song
  end
end

def artists
  songs.map do |song|
    song.artist
  end
end

end
