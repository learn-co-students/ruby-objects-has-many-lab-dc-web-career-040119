require "pry"

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    song_name = Song.new(song)
    song_name.artist = self
    @songs << song_name
  end

  def self.song_count
    array = Song.all.map do |song|
      if song.artist
        song
      end
    end
    return array.length
  end

end
