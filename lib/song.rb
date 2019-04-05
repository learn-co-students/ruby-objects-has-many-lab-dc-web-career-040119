class Song

  attr_accessor :artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    artist == nil ? nil : artist.name
  end
  #Class methods

  def self.all
    @@all
  end

end