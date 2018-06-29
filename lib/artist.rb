require 'pry'


class Artist
	attr_reader :name, :song
	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_song(song_name, genre)
		new_song = Song.new(song_name, self, genre)
		# binding.pry
	end

	def songs
		Song.all.select{|song| song.artist == self}
	end

	def genres	
		songs.map{|song| song.genre}
	end
end