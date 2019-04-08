class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist ? artist.name : nil
  end
end
