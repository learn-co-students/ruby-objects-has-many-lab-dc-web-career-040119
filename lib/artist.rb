
require 'pry'
class Artist 

	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
	end 

	def add_song(song)
		if Song.all.include?(song)
			@songs << song
			song.artist = self
		end 
	end 

	def add_song_by_name(song_name)
		self.songs << Song.new(song_name)
		Song.all.last.artist = self
	end 

	def self.song_count 
		Song.all.select do |song|
			song.artist = self
		end.count
	end 
end 