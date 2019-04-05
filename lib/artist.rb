class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  #Class Methods

  def self.all
    @@all
  end

  def self.song_count
    total = 0
    all.each  { |artist| total += artist.songs.length }
    total
  end

end
