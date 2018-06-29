class Song
	attr_reader :name, :artist, :genre
	attr_writer :artist, :genre
	@@all = []
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@all << self
	end

	def self.all
		@@all
	end
end