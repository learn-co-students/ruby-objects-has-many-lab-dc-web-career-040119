

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def artist_name
    if self.artist == nil
      return nil
    else
      self.artist.name
    end
  end

  def self.all
    @@all
  end

end
