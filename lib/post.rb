

class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  @@all = []

  def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end

  def self.all
    @@all
  end

end
